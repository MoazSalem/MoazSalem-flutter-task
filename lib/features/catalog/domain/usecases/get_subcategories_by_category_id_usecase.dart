import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/catalog/domain/entities/subcategory.dart';
import 'package:otex/features/catalog/domain/repositories/catalog_repository.dart';

@Injectable()
class GetSubcategoriesByCategoryIdUsecase {
  final CatalogRepository catalogRepository;

  GetSubcategoriesByCategoryIdUsecase(this.catalogRepository);

  Future<Either<ErrorException, List<Subcategory>>> call(int categoryId) {
    return catalogRepository.getSubcategoriesByCategoryID(categoryId);
  }
}
