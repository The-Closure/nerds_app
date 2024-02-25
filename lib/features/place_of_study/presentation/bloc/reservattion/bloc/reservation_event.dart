
import '../../../../domain/entities/reservation_entity.dart';

abstract class ReservationEvent {
  const ReservationEvent();
}

class GetReservations extends ReservationEvent {
  const GetReservations();
}


class PostReservation extends ReservationEvent {
  ReservationEntity reservationEntity;
   PostReservation({
    required this.reservationEntity,
  });
}


class PutReservation extends ReservationEvent {
  ReservationEntity reservationEntity;
  int id;
   PutReservation({required this.reservationEntity,required this.id});
}
class DeletReservation extends ReservationEvent {
  int id;

   DeletReservation({required this.id});
}