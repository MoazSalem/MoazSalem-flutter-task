import 'package:fpdart/fpdart.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/user/data/models/subscription_plan_model.dart';

abstract class UserLocalDatasource {
  Future<Either<ErrorException, List<SubscriptionPlanModel>>> getPlans();
}
