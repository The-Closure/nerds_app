// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

class LoadingState extends UserState {}

class SuccessToLogInState extends UserState {
  UserModel user;
  SuccessToLogInState({
    required this.user,
  });
}

class FailToLogInState extends UserState {
  ErrorModel error;
  FailToLogInState({
    required this.error,
  });
}

class SuccessToregisterState extends UserState {
  UserModel user;
  SuccessToregisterState({
    required this.user,
  });
}

class FailToRegisterState extends UserState {
  ErrorModel error;
  FailToRegisterState({
    required this.error,
  });
}
