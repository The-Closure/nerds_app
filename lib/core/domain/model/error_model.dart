// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dashbord_cafe/core/domain/model/general_model.dart';

class ErrorModel extends GeneralModel {
  String errorMessage;
  ErrorModel({
    required this.errorMessage,
  });
}