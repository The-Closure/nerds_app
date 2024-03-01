// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../../domain/entities/room_entity.dart';

abstract class RoomEvent {
  const RoomEvent();
}

class GetRooms extends RoomEvent {
 int idPlace;
  GetRooms({
    required this.idPlace,
  });
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