import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/reservation_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/reservation_repository.dart';

class GetReservationUseCase
    implements UseCase<DataState<List<ReservationEntity>>, void> {
  final ReservationRepository _reservationRepository;

  GetReservationUseCase(this._reservationRepository);

  @override
  Future<DataState<List<ReservationEntity>>> call({void params}) {
    return _reservationRepository.getReservations();
  }
}

class PostReservationUseCase
    implements UseCase<DataState<ReservationEntity>, ReservationEntity> {
  final ReservationRepository _reservationRepository;

  PostReservationUseCase(this._reservationRepository);

  @override
  Future<DataState<ReservationEntity>> call({ReservationEntity? params}) {
    return _reservationRepository.postReservation(
        newReservationEntity: params!);
  }
}

class PutReservationUseCase
    implements UseCase<DataState<ReservationEntity>, ReservationEntity> {
  final ReservationRepository _reservationRepository;

  PutReservationUseCase(this._reservationRepository);

  @override
  Future<DataState<ReservationEntity>> call(
      {ReservationEntity? params, int? id}) {
    return _reservationRepository.putReservation(
        newReservationEntity: params!, id: id!);
  }
}

class DeletReservationUseCase implements UseCase<DataState<String>, int> {
  final ReservationRepository _reservationRepository;

  DeletReservationUseCase(this._reservationRepository);

  @override
  Future<DataState<String>> call({int? params}) {
    return _reservationRepository.deletReservation(id: params!);
  }
}
