
import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecases/reservation.dart';
import 'reservation_event.dart';
import 'reservation_state.dart';

class ReservationOfCafesBloc extends Bloc<ReservationEvent, ReservationState> {
  final GetReservationUseCase _getReservationUseCase;
  final PostReservationUseCase _postReservationUseCase;
  final PutReservationUseCase _putReservationUseCase;
  final DeletReservationUseCase _deletReservationUseCase;

  ReservationOfCafesBloc(this._getReservationUseCase, this._postReservationUseCase, this._putReservationUseCase, this._deletReservationUseCase) : super(const ReservationsLoadingState()) {
    on<GetReservations>(onGetReservations);

    on<PostReservation>(onPostReservations);

    on<PutReservation>(onPutReservations);
    
    on<DeletReservation>(onDeletReservations);
  }

  void onGetReservations(GetReservations event, Emitter<ReservationState> emit) async {
    final dataState = await _getReservationUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(ReservationsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(ReservationsErrorState(dataState.exception!));
    }
  }

   void onPostReservations(PostReservation event, Emitter<ReservationState> emit) async {
    final dataState = await _postReservationUseCase(params: event.reservationEntity);

    if (dataState is DataSuccess ) {
      emit(PostReservationsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(ReservationsErrorState(dataState.exception!));
    }
  }
   void onPutReservations(PutReservation event, Emitter<ReservationState> emit) async {
    final dataState = await _putReservationUseCase();

    if (dataState is DataSuccess ) {
      emit(PutReservationsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(ReservationsErrorState(dataState.exception!));
    }
  }
   void onDeletReservations(DeletReservation event, Emitter<ReservationState> emit) async {
    final dataState = await _deletReservationUseCase();

    if (dataState is DataSuccess ) {
      emit(DeletReservationsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(ReservationsErrorState(dataState.exception!));
    }
  }
}
