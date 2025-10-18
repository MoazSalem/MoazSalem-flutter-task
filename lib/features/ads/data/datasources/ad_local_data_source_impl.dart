import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/ads/data/models/ad_model.dart';
import 'package:otex/features/ads/domain/datasource/ad_local_data_source.dart';
import 'package:sqflite/sqflite.dart';

@LazySingleton(as: AdLocalDataSource)
class AdLocalDataSourceImpl implements AdLocalDataSource {
  final Database db;

  AdLocalDataSourceImpl({required this.db});

  @override
  Future<Either<ErrorException, List<AdModel>>> getAllAds() async {
    try {
      final ads = await db.query('ads');
      return Right(ads.map((ad) => AdModel.fromJson(ad)).toList());
    } catch (e) {
      return Left(ErrorException(e.toString()));
    }
  }

  @override
  Future<Either<ErrorException, List<AdModel>>> getAdsBySubcategoryId(
    int subcategoryId,
  ) async {
    try {
      final ads = await db.query(
        'ads',
        where: 'subcategoryId = ?',
        whereArgs: [subcategoryId],
      );
      return Right(ads.map((ad) => AdModel.fromJson(ad)).toList());
    } catch (e) {
      return Left(ErrorException(e.toString()));
    }
  }
}
