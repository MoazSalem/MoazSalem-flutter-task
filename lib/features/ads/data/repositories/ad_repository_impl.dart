import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/ads/data/models/ad_model.dart';
import 'package:otex/features/ads/domain/datasource/ad_local_data_source.dart';
import 'package:otex/features/ads/domain/entities/ad.dart';
import 'package:otex/features/ads/domain/repositories/ad_repository.dart';

@LazySingleton(as: AdRepository)
class AdRepositoryImpl implements AdRepository {
  final AdLocalDataSource datasource;

  AdRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<Ad>>> getAllAds() async {
    final adsResult = await datasource.getAllAds();
    return adsResult.map(
      (models) => models.map((model) => model.toAd()).toList(),
    );
  }

  @override
  Future<Either<ErrorException, List<Ad>>> getAdsBySubcategoryId(
    int subcategoryId,
  ) async {
    final adsResult = await datasource.getAdsBySubcategoryId(subcategoryId);
    return adsResult.map(
      (models) => models.map((model) => model.toAd()).toList(),
    );
  }
}
