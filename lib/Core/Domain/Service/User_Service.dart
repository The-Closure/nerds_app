import 'package:my_reservations/Core/Domain/Model/Error_Model.dart';
import 'package:my_reservations/Core/Domain/Model/User_Login_Model.dart';
import 'package:my_reservations/Core/Domain/Model/User_model.dart';
import 'package:my_reservations/Core/Domain/Service/Base_service.dart';

class UserService extends baseService {
  Login(UserLoginModel UserLogin) async {
    UserLoginModel userLogin = UserLogin;
    response = await dio.get(getUserInfoURL , data:userLogin.toJson() );
    try {
      if (response.statusCode == 200) {
        UserModel user = UserModel.fromJson(response.data);
        return user ;
      } else {
        return ErrorModel(error: response.statusMessage);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }

  Register(UserModel user) async {
    response = await dio.post(RegisterURL, data: user.toJson());
    try {
      if (response.statusCode == 201) {
        UserModel user = UserModel.fromJson(response.data);
        return user;
      } else {
        return ErrorModel(error: response.statusMessage);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }
}
