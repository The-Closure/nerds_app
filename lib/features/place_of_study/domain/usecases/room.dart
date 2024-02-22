import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/room_repository.dart';

class GetRoomUseCase implements UseCase<DataState<List<RoomEntity>>, int> {
  final RoomRepository _roomRepository;

  GetRoomUseCase(this._roomRepository);

  @override
  Future<DataState<List<RoomEntity>>> call({int? params}) {
    return _roomRepository.getRooms(idPlace: params!);
  }
}

class PostRoomUseCase implements UseCase<DataState<RoomEntity>, RoomEntity> {
  final RoomRepository _roomRepository;

  PostRoomUseCase(this._roomRepository);

  @override
  Future<DataState<RoomEntity>> call({RoomEntity? params}) {
    return _roomRepository.postRooms(newRoomEntity: params!);
  }
}

class PutRoomUseCase implements UseCase<DataState<RoomEntity>, RoomEntity> {
  final RoomRepository _roomRepository;

  PutRoomUseCase(this._roomRepository);

  @override
  Future<DataState<RoomEntity>> call({RoomEntity? params, int? id}) {
    return _roomRepository.putRooms(newRoomEntity: params!, id: id!);
  }
}

class DeletRoomUseCase implements UseCase<DataState<String>, int> {
  final RoomRepository _roomRepository;

  DeletRoomUseCase(this._roomRepository);

  @override
  Future<DataState<String>> call({int? params}) {
    return _roomRepository.deletRooms(id: params!);
  }
}
