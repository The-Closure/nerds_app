import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/rooms_categry_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/romms_categry_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rooms_categry_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class RoomsCategryApiService {
  factory RoomsCategryApiService(Dio dio) = _RoomsCategryApiService;

  @GET('/RoomsCategrys/allRoomsCategrys')
  Future<HttpResponse<List<RoomsCategryModel>>> getRoomsCategrys();
  @POST('path')
  Future<HttpResponse<RoomsCategryModel>> postRoomsCategry(
      {@Body() required RoomsCategryEntity newRoomsCategryModel});

  @PUT('path')
  Future<HttpResponse<RoomsCategryModel>> putRoomsCategry(
      {@Query('') required int id,@Body() required RoomsCategryEntity newRoomsCategryModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletRoomsCategry({@Query('') required int id});
}
