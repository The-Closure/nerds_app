import 'package:dio/dio.dart';

class baseService {
  Dio dio = Dio();
   String getUserInfoURL = '';
   String RegisterURL = '';
  late Response response;
}
