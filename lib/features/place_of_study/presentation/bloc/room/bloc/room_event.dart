
import '../../../../domain/entities/room_entity.dart';

abstract class RoomEvent {
  const RoomEvent();
}

class GetRooms extends RoomEvent {
  const GetRooms();
}


class PostRoom extends RoomEvent {
  RoomEntity roomEntity;
   PostRoom({
    required this.roomEntity,
  });
}


class PutRoom extends RoomEvent {
  RoomEntity roomEntity;
  int id;
   PutRoom({required this.roomEntity,required this.id});
}
class DeletRoom extends RoomEvent {
  int id;

   DeletRoom({required this.id});
}