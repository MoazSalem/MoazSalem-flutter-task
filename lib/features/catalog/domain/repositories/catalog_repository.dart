import 'package:fpdart/fpdart.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/catalog/domain/entities/category.dart';
import 'package:otex/features/catalog/domain/entities/subcategory.dart';

abstract class CatalogRepository {
  Future<Either<ErrorException, List<Category>>> getCategories();

  Future<Either<ErrorException, List<Subcategory>>> getAllSubCategories();

  Future<Either<ErrorException, List<Subcategory>>>
  getSubcategoriesByCategoryID(int categoryId);
}
