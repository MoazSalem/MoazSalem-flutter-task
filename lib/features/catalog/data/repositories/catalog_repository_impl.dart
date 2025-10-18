import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/catalog/data/models/category_model.dart';
import 'package:otex/features/catalog/data/models/subcategory_model.dart';
import 'package:otex/features/catalog/domain/datasources/catalog_local_datasource.dart';
import 'package:otex/features/catalog/domain/entities/category.dart';
import 'package:otex/features/catalog/domain/entities/subcategory.dart';
import 'package:otex/features/catalog/domain/repositories/catalog_repository.dart';

@Singleton(as: CatalogRepository)
class CatalogRepositoryImpl implements CatalogRepository {
  final CatalogLocalDataSource datasource;

  CatalogRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<Category>>> getCategories() async {
    final result = await datasource.getCategories();
    return result.map(
      (models) => models.map((model) => model.toEntity()).toList(),
    );
  }

  @override
  Future<Either<ErrorException, List<Subcategory>>>
  getAllSubCategories() async {
    final result = await datasource.getAllSubcategories();
    return result.map(
      (models) => models.map((model) => model.toEntity()).toList(),
    );
  }

  @override
  Future<Either<ErrorException, List<Subcategory>>>
  getSubcategoriesByCategoryID(int categoryId) async {
    final result = await datasource.getSubcategoriesByCategoryId(categoryId);
    return result.map(
      (models) => models.map((model) => model.toEntity()).toList(),
    );
  }
}
