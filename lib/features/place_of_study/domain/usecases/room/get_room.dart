import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/room_repository.dart';

class GetRoomsUseCase implements UseCase<DataState<List<RoomEntity>>, void> {
  final RoomRepository _roomRepository;

  GetRoomsUseCase(this._roomRepository);

  @override
  Future<DataState<List<RoomEntity>>> call({void params}) {
    return _roomRepository.getRooms();
  }
}
