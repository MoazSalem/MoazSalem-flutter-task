import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/user/data/models/subscription_plan_model.dart';
import 'package:otex/features/user/domain/datasources/user_local_datasource.dart';
import 'package:sqflite/sqflite.dart';

@Singleton(as: UserLocalDatasource)
class UserLocalDatasourceImpl implements UserLocalDatasource {
  final Database db;
  UserLocalDatasourceImpl(this.db);

  @override
  Future<Either<ErrorException, List<SubscriptionPlanModel>>> getPlans() async {
    try {
      final plans = await db.query('subscription_plans');
      return Right(
        plans.map((plan) => SubscriptionPlanModel.fromJson(plan)).toList(),
      );
    } catch (e) {
      return Left(ErrorException(e.toString()));
    }
  }
}
