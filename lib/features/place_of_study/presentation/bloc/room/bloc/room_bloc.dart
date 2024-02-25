
import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecases/room.dart';
import 'room_event.dart';
import 'room_state.dart';

class RoomOfCafesBloc extends Bloc<RoomEvent, RoomState> {
  final GetRoomUseCase _getRoomUseCase;
  final PostRoomUseCase _postRoomUseCase;
  final PutRoomUseCase _putRoomUseCase;
  final DeletRoomUseCase _deletRoomUseCase;

  RoomOfCafesBloc(this._getRoomUseCase, this._postRoomUseCase, this._putRoomUseCase, this._deletRoomUseCase) : super(const RoomsLoadingState()) {
    on<GetRooms>(onGetRooms);

    on<PostRoom>(onPostRooms);

    on<PutRoom>(onPutRooms);
    
    on<DeletRoom>(onDeletRooms);
  }

  void onGetRooms(GetRooms event, Emitter<RoomState> emit) async {
    final dataState = await _getRoomUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RoomsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RoomsErrorState(dataState.exception!));
    }
  }

   void onPostRooms(PostRoom event, Emitter<RoomState> emit) async {
    final dataState = await _postRoomUseCase(params: event.roomEntity);

    if (dataState is DataSuccess ) {
      emit(PostRoomsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RoomsErrorState(dataState.exception!));
    }
  }
   void onPutRooms(PutRoom event, Emitter<RoomState> emit) async {
    final dataState = await _putRoomUseCase();

    if (dataState is DataSuccess ) {
      emit(PutRoomsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RoomsErrorState(dataState.exception!));
    }
  }
   void onDeletRooms(DeletRoom event, Emitter<RoomState> emit) async {
    final dataState = await _deletRoomUseCase();

    if (dataState is DataSuccess ) {
      emit(DeletRoomsDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RoomsErrorState(dataState.exception!));
    }
  }
}
