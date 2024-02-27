import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/tables_categry_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/tables_categry_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'tables_categry_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class TablesCategryApiService {
  factory TablesCategryApiService(Dio dio) = _TablesCategryApiService;

  @GET('/TablesCategrys/allTablesCategrys')
  Future<HttpResponse<List<TablesCategryModel>>> getTablesCategrys();
  @POST('path')
  Future<HttpResponse<TablesCategryModel>> postTablesCategry(
      {@Body() required TablesCategryEntity newTablesCategryModel});

  @PUT('path')
  Future<HttpResponse<TablesCategryModel>> putTablesCategry(
      {@Query('') required int id,@Body() required TablesCategryEntity newTablesCategryModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletTablesCategry({@Body() required int id});
}
