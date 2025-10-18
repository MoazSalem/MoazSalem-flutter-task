import 'package:fpdart/fpdart.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/catalog/data/models/category_model.dart';
import 'package:otex/features/catalog/data/models/subcategory_model.dart';

abstract class CatalogLocalDataSource {
  Future<Either<ErrorException, List<CategoryModel>>> getCategories();

  Future<Either<ErrorException, List<SubcategoryModel>>> getAllSubcategories();

  Future<Either<ErrorException, List<SubcategoryModel>>>
  getSubcategoriesByCategoryId(int categoryId);
}
