part of 'ads_cubit.dart';

@immutable
class AdsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AdsInitial extends AdsState {}

class AdsLoading extends AdsState {}

class AdsLoaded extends AdsState {
  final List<Ad> ads;

  AdsLoaded({required this.ads});

  @override
  List<Object?> get props => [ads];
}

class AdsError extends AdsState {
  final String message;

  AdsError({required this.message});

  @override
  List<Object?> get props => [message];
}
