part of 'reservations_bloc.dart';

sealed class ReservationsState {
  const ReservationsState();
}

final class ReservationsInitial extends ReservationsState {}

class LoadingReservationsState extends ReservationsState {}

class SuccessToLoadReservationsState extends ReservationsState {}

class DeleteReservedState extends ReservationsState {}

class DeleteBusyState extends ReservationsState {}

class ChangeBusyToReservedState extends ReservationsState {}

class ErrorToLoadReservationsState extends ReservationsState {}

class ExceptionToLoadReservationsState extends ReservationsState {}
