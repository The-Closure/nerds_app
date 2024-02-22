import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/tables_categry_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'tables_categry_api_servece.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class TablesCategryApiService {
  factory TablesCategryApiService(Dio dio) = _TablesCategryApiService;

  @GET('/TablesCategrys/allTablesCategrys')
  Future<HttpResponse<List<TablesCategryModel>>> getTablesCategrys();
  @POST('path')
  Future<HttpResponse<TablesCategryModel>> postPlace(
      {@Body() required TablesCategryModel newTablesCategryModel});

  @PUT('path')
  Future<HttpResponse<TablesCategryModel>> putPlace(
      {required int id, required TablesCategryModel newTablesCategryModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletPlace({required int id});
}
