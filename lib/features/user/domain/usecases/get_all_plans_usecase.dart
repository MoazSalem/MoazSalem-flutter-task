import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/error/error_exception.dart';
import 'package:otex/features/user/domain/entities/subscription_plan.dart';
import 'package:otex/features/user/domain/repositories/user_repository.dart';

@Injectable()
class GetAllPlansUseCase {
  final UserRepository userRepository;

  GetAllPlansUseCase(this.userRepository);

  Future<Either<ErrorException, List<SubscriptionPlan>>> call() async {
    return userRepository.getPlans();
  }
}
