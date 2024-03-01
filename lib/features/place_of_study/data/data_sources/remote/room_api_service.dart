import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/room_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'room_api_service.g.dart';

@RestApi(baseUrl: roomsAPIBaseURL)
abstract class RoomApiService {
  factory RoomApiService(Dio dio) = _RoomApiService;

  @GET('/1/AllRooms')
  Future<HttpResponse<List<RoomModel>>> getRooms({required int idPlace});

  @POST('path')
  Future<HttpResponse<RoomModel>> postRoom({@Body() required RoomEntity newRoomModel});

  @PUT('path')
  Future<HttpResponse<RoomModel>> putRoom(
      {@Query('') required int id,@Body() required RoomEntity newRoomModel});

  @DELETE('path')
  Future<HttpResponse<String>> deletRoom({@Query('') required int id});
}
