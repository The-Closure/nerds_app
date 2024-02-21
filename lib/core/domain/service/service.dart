import 'package:dio/dio.dart';
import 'package:reservations/core/domain/model/result_model.dart';
import 'package:reservations/core/domain/model/rooms_model.dart';

class Service {
  Dio dio =Dio();
  late Response response;
}

class RoomssService extends Service {
  
Future<ServiceResultModel>  getdata() async {
    try {
      response = await dio.get('');
      if (response.statusCode == 200) {
       RoomsModel rooms = RoomsModel.fromMap(response.data);
        return rooms;
        } else {
        return ErrorModel(Message: response.statusMessage!);
      }
    } catch (e) {
      return ErrorModel(Message: e.toString());
    }
  }
}

