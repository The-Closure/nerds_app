// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class LogInEvent extends UserEvent {
  UserLoginModel userLogin;
  LogInEvent({
    required this.userLogin,
  });
}

class RegisterEvent extends UserEvent {
  UserModel user;
  RegisterEvent({
    required this.user,
  });
}
