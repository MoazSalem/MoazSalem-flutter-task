import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/user/data/models/subscription_plan_model.dart';
import 'package:otex/features/user/domain/datasources/user_local_datasource.dart';
import 'package:otex/features/user/domain/entities/subscription_plan.dart';
import 'package:otex/features/user/domain/repositories/user_repository.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserLocalDatasource _localDatasource;
  UserRepositoryImpl(this._localDatasource);
  @override
  Future<Either<ErrorException, List<SubscriptionPlan>>> getPlans() async {
    try {
      final result = await _localDatasource.getPlans();
      return result.map(
        (models) => models.map((model) => model.toEntity()).toList(),
      );
    } catch (e) {
      return left(ErrorException(e.toString()));
    }
  }
}
