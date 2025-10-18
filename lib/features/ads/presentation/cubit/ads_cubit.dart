import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex/features/ads/domain/entities/ad.dart';
import 'package:otex/features/ads/domain/usecases/get_ads_by_subcategory_id_usecase.dart';
import 'package:otex/features/ads/domain/usecases/get_all_ads_usecase.dart';

part 'ads_state.dart';

class AdsCubit extends Cubit<AdsState> {
  final GetAllAdsUseCase _getAllAdsUseCase;
  final GetAdsBySubcategoryIdUseCase _getAdsBySubcategoryIdUseCase;

  AdsCubit(this._getAllAdsUseCase, this._getAdsBySubcategoryIdUseCase)
    : super(AdsInitial());

  void getAllAds() async {
    emit(AdsLoading());
    final result = await _getAllAdsUseCase.call();
    result.fold(
      (error) => emit(AdsError(message: error.message)),
      (ads) => emit(AdsLoaded(ads: ads)),
    );
  }

  void getAdsBySubcategoryId(int subcategoryId) async {
    emit(AdsLoading());
    final result = await _getAdsBySubcategoryIdUseCase.call(subcategoryId);
    result.fold(
      (error) => emit(AdsError(message: error.message)),
      (ads) => emit(AdsLoaded(ads: ads)),
    );
  }
}
