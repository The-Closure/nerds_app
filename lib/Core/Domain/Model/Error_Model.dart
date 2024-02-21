// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class ErrorModel extends BaseModel {
  String? error;
  ErrorModel({
    required this.error,
  });
}
