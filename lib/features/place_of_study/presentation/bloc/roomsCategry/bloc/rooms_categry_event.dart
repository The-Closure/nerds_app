
import 'package:dashbord_cafe/features/place_of_study/domain/entities/romms_categry_entity.dart';


abstract class RoomsCategryEvent {
  const RoomsCategryEvent();
}

class GetRoomsCategrys extends RoomsCategryEvent {
  const GetRoomsCategrys();
}


class PostRoomsCategry extends RoomsCategryEvent {
  RoomsCategryEntity roomsCategryEntity;
   PostRoomsCategry({
    required this.roomsCategryEntity,
  });
}


class PutRoomsCategry extends RoomsCategryEvent {
  RoomsCategryEntity roomsCategryEntity;
  int id;
   PutRoomsCategry({required this.roomsCategryEntity,required this.id});
}
class DeletRoomsCategry extends RoomsCategryEvent {
  int id;

   DeletRoomsCategry({required this.id});
}