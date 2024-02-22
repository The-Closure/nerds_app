import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/rooms_categry_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rooms_categry_api_servece.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class RoomsCategryApiService {
  factory RoomsCategryApiService(Dio dio) = _RoomsCategryApiService;

  @GET('/RoomsCategrys/allRoomsCategrys')
  Future<HttpResponse<List<RoomsCategryModel>>> getRoomsCategrys();
  @POST('path')
  Future<HttpResponse<RoomsCategryModel>> postPlace(
      {@Body() required RoomsCategryModel newRoomsCategryModel});

  @PUT('path')
  Future<HttpResponse<RoomsCategryModel>> putPlace(
      {required int id, required RoomsCategryModel newRoomsCategryModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletPlace({required int id});
}
