import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/catalog/domain/entities/category.dart';
import 'package:otex/features/catalog/domain/repositories/catalog_repository.dart';

@Injectable()
class GetAllCategoriesUseCase {
  final CatalogRepository catalogRepository;

  GetAllCategoriesUseCase(this.catalogRepository);

  Future<Either<ErrorException, List<Category>>> call() {
    return catalogRepository.getCategories();
  }
}
