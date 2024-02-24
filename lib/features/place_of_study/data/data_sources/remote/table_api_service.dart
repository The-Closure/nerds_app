import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/table_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'table_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class TableApiService {
  factory TableApiService(Dio dio) = _TableApiService;

  @GET('/Tables/allTables')
  Future<HttpResponse<List<TableModel>>> getTables();
  @POST('path')
  Future<HttpResponse<TableModel>> postPlace(
      {required TableModel newTableModel});

  @PUT('path')
  Future<HttpResponse<TableModel>> putPlace(
      {required int id, required TableModel newTableModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletPlace({required int id});
}
