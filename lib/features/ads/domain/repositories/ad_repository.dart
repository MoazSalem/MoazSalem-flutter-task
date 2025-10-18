import 'package:fpdart/fpdart.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/ads/domain/entities/ad.dart';

abstract class AdRepository {
  Future<Either<ErrorException, List<Ad>>> getAllAds();
  Future<Either<ErrorException, List<Ad>>> getAdsBySubcategoryId(
    int subcategoryId,
  );
}
