import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/table_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/table_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'table_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class TableApiService {
  factory TableApiService(Dio dio) = _TableApiService;

  @GET('/Tables/allTables')
  Future<HttpResponse<List<TableModel>>> getTables({@Header('')  required int idRoom});
  @POST('path')
  Future<HttpResponse<TableModel>> postTable(
      {@Body() required TableEntity newTableModel});

  @PUT('path')
  Future<HttpResponse<TableModel>> putTable(
      {@Query('') required int id,@Body() required TableEntity newTableModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletTable({@Query('') required int id});
}
