import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/catalog/data/models/category_model.dart';
import 'package:otex/features/catalog/data/models/subcategory_model.dart';
import 'package:otex/features/catalog/domain/datasources/catalog_local_datasource.dart';
import 'package:sqflite/sqflite.dart';

@Singleton(as: CatalogLocalDataSource)
class CatalogLocalDataSourceImpl implements CatalogLocalDataSource {
  CatalogLocalDataSourceImpl(this.db);
  final Database db;

  @override
  Future<Either<ErrorException, List<CategoryModel>>> getCategories() async {
    try {
      final categories = await db.query('categories');
      return Right(
        categories.map((category) => CategoryModel.fromJson(category)).toList(),
      );
    } catch (e) {
      return Left(ErrorException(e.toString()));
    }
  }

  @override
  Future<Either<ErrorException, List<SubcategoryModel>>>
  getAllSubcategories() async {
    try {
      final subcategories = await db.query('subcategories');
      return Right(
        subcategories
            .map((subcategory) => SubcategoryModel.fromJson(subcategory))
            .toList(),
      );
    } catch (e) {
      return Left(ErrorException(e.toString()));
    }
  }

  @override
  Future<Either<ErrorException, List<SubcategoryModel>>>
  getSubcategoriesByCategoryId(int categoryId) async {
    try {
      final subcategories = await db.query(
        'subcategories',
        where: 'categoryId = ?',
        whereArgs: [categoryId],
      );
      return Right(
        subcategories
            .map((subcategory) => SubcategoryModel.fromJson(subcategory))
            .toList(),
      );
    } catch (e) {
      return Left(ErrorException(e.toString()));
    }
  }
}
