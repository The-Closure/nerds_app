import 'package:dashbord_cafe/core/domain/model/error_model.dart';
import 'package:dashbord_cafe/core/domain/model/exception_model.dart';
import 'package:dashbord_cafe/core/domain/model/general_model.dart';
import 'package:dio/dio.dart';

abstract class Service {
  Dio dio = Dio();
}

class NerdsService extends Service {
  Future<GeneralModel> getPlaces() async {
    try {
      Response response = await dio.get('');
      if (response.statusCode == 200) {
        return response.data; //todo
      } else {
        return ErrorModel(errorMessage: response.headers.map.toString());
      }
    } catch (error) {
      return ExceptionModel(exceptionMessage: error.toString());
    }
  }
}
