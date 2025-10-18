import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/ads/domain/entities/ad.dart';
import 'package:otex/features/ads/domain/repositories/ad_repository.dart';

@injectable
class GetAllAdsUseCase {
  final AdRepository adRepository;

  GetAllAdsUseCase(this.adRepository);

  Future<Either<ErrorException, List<Ad>>> call() async {
    return await adRepository.getAllAds();
  }
}
