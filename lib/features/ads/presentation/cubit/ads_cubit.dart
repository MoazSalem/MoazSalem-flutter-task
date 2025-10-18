import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:otex/features/ads/domain/entities/ad.dart';
import 'package:otex/features/ads/domain/usecases/get_ads_by_subcategory_Id_usecase.dart';
import 'package:otex/features/ads/domain/usecases/get_all_ads_usecase.dart';

part 'ads_state.dart';

class AdsCubit extends Cubit<AdsState> {
  AdsCubit() : super(AdsInitial());

  void getAllAds() async {
    emit(AdsLoading());
    final result = await GetIt.instance<GetAllAdsUseCase>().call();
    result.fold(
      (error) => emit(AdsError(message: error.message)),
      (ads) => emit(AdsLoaded(ads: ads)),
    );
  }

  void getAdsBySubcategoryId(int subcategoryId) async {
    emit(AdsLoading());
    final result = await GetIt.instance<GetAdsBySubcategoryIdUseCase>().call(
      subcategoryId,
    );
    result.fold(
      (error) => emit(AdsError(message: error.message)),
      (ads) => emit(AdsLoaded(ads: ads)),
    );
  }
}
