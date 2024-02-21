import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_reservations/Core/Domain/Model/Error_Model.dart';
import 'package:my_reservations/Core/Domain/Model/User_Login_Model.dart';
import 'package:my_reservations/Core/Domain/Model/User_model.dart';
import 'package:my_reservations/Core/Domain/Service/User_Service.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LogInEvent>((event, emit) async {
      emit(LoadingState());
      dynamic data = await UserService().Login(event.userLogin);
      if (data is UserModel) {
        emit(SuccessToLogInState(user: data));
      } else {
        emit(FailToLogInState(error: data as ErrorModel));
      }
    });

    on<RegisterEvent>((event, emit) async {
      emit(LoadingState());
      dynamic data = await UserService().Register(event.user);
      if (data is UserModel) {
        emit(SuccessToregisterState(user: data));
      } else {
        emit(FailToRegisterState(error: data as ErrorModel));
      }
    });
  }
}
