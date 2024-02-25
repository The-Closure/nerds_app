
import 'package:dashbord_cafe/features/place_of_study/domain/entities/reservation_entity.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class ReservationState extends Equatable {
  final List<ReservationEntity>? reservations;
  final ReservationEntity? reservation;
  final String? massege;

  final DioException? exception;
  const ReservationState({
    this.reservations,
    this.reservation,
    this.massege,
    this.exception,
  });


  @override
  List<Object ?> get props => [reservations, reservation,massege ,exception];
}

class ReservationsLoadingState extends ReservationState {
  const ReservationsLoadingState();
}

class ReservationsDoneState extends ReservationState {
  const ReservationsDoneState(List<ReservationEntity> reservations) : super(reservations: reservations);
}

class ReservationsErrorState extends ReservationState {
  const ReservationsErrorState(DioException exception) : super(exception: exception);
}
class PostReservationsDoneState extends ReservationState {
  const PostReservationsDoneState(ReservationEntity reservation) : super(reservation: reservation);
}

class PutReservationsDoneState extends ReservationState {
  const PutReservationsDoneState(ReservationEntity reservation) : super(reservation: reservation);
}
class DeletReservationsDoneState extends ReservationState {
  const DeletReservationsDoneState(String massege) : super(massege: massege);
}
