import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/features/user/domain/entities/subscription_plan.dart';
import 'package:otex/features/user/domain/usecases/get_all_plans_usecase.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final GetAllPlansUseCase _getAllPlansUseCase;

  UserCubit(this._getAllPlansUseCase) : super(UserInitial());

  void getAllPlans() async {
    emit(UserLoading());
    final result = await _getAllPlansUseCase.call();
    result.fold(
      (error) => emit(UserError(message: error.message)),
      (plans) => emit(UserLoaded(plans: plans)),
    );
  }
}
