import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/reservation_entity.dart';

abstract class ReservationRepository {
  // API methods
  Future<DataState<List<ReservationEntity>>> getReservations();

  Future<DataState<ReservationEntity>> postReservations(
      {required ReservationEntity newReservationEntity});

  Future<DataState<ReservationEntity>> putReservations(
      {required int id, required ReservationEntity newReservationEntity});

  Future<DataState<String>> deletReservations({required int id});
}
