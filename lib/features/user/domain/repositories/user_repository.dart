import 'package:fpdart/fpdart.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/user/domain/entities/subscription_plan.dart';

abstract class UserRepository {
  Future<Either<ErrorException, List<SubscriptionPlan>>> getPlans();
}
