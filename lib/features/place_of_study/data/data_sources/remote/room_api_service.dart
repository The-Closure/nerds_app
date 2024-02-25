import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/room_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'room_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class RoomApiService {
  factory RoomApiService(Dio dio) = _RoomApiService;

  @GET('/Rooms/allRooms')
  Future<HttpResponse<List<RoomModel>>> getRooms({required int idPlace});

  @POST('path')
  Future<HttpResponse<RoomModel>> postRoom({required RoomEntity newRoomModel});

  @PUT('path')
  Future<HttpResponse<RoomModel>> putRoom(
      {required int id, required RoomEntity newRoomModel});

  @DELETE('path')
  Future<HttpResponse<String>> deletRoom({required int id});
}
