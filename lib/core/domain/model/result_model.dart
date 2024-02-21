abstract class ServiceResultModel {

}


class ErrorModel extends ServiceResultModel {
  String Message;
  ErrorModel({
    required this.Message,
  });
}
