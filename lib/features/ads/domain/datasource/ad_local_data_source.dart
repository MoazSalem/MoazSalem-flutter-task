import 'package:fpdart/fpdart.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/ads/data/models/ad_model.dart';

abstract class AdLocalDataSource {
  Future<Either<ErrorException, List<AdModel>>> getAllAds();
  Future<Either<ErrorException, List<AdModel>>> getAdsBySubcategoryId(
    int subcategoryId,
  );
}
