import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/room_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'room_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class RoomApiService {
  factory RoomApiService(Dio dio) = _RoomApiService;

  @GET('/Rooms/allRooms')
  Future<HttpResponse<List<RoomModel>>> getRooms({required int idPlace});

  @POST('path')
  Future<HttpResponse<RoomModel>> postPlace({required RoomModel newRoomModel});

  @PUT('path')
  Future<HttpResponse<RoomModel>> putPlace(
      {required int id, required RoomModel newRoomModel});

  @DELETE('path')
  Future<HttpResponse<String>> deletPlace({required int id});
}
