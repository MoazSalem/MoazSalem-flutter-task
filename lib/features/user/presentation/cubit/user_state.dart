part of 'user_cubit.dart';

@immutable
class UserState extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final List<SubscriptionPlan> plans;

  UserLoaded({required this.plans});

  @override
  List<Object?> get props => [plans];
}

class UserError extends UserState {
  final String message;

  UserError({required this.message});

  @override
  List<Object?> get props => [message];
}
