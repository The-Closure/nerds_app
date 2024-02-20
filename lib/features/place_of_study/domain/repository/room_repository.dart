import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';

abstract class RoomRepository {
  // API methods
  Future<DataState<List<RoomEntity>>> getRooms();
}
