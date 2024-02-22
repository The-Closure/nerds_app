import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';

abstract class RoomRepository {
  // API methods
  Future<DataState<List<RoomEntity>>> getRooms({required int idPlace});

  Future<DataState<RoomEntity>> postRooms({required RoomEntity newRoomEntity});

  Future<DataState<RoomEntity>> putRooms(
      {required int id, required RoomEntity newRoomEntity});

  Future<DataState<String>> deletRooms({required int id});
}
