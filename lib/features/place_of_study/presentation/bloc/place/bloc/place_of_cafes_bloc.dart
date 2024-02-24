import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/usecases/places.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaceOfCafesBloc extends Bloc<PlaceOfCafesEvent, PlaceOfCafesState> {
  final GetPlaceUseCase _getPlaceUseCase;
  final PostPlaceUseCase _postPlaceUseCase;
  final PutPlaceUseCase _putPlaceUseCase;
  final DeletPlaceUseCase _deletPlaceUseCase;

  PlaceOfCafesBloc(this._getPlaceUseCase, this._postPlaceUseCase, this._putPlaceUseCase, this._deletPlaceUseCase) : super(const PlacesLoadingState()) {
    on<GetPlaces>(onGetPlaces);

    on<PostPlace>(onPostPlaces);

    on<PutPlace>(onPutPlaces);
    
    on<DeletPlace>(onDeletPlaces);
  }

  void onGetPlaces(GetPlaces event, Emitter<PlaceOfCafesState> emit) async {
    final dataState = await _getPlaceUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(PlacesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(PlacesErrorState(dataState.exception!));
    }
  }

   void onPostPlaces(PostPlace event, Emitter<PlaceOfCafesState> emit) async {
    final dataState = await _postPlaceUseCase(params: event.placeEntity);

    if (dataState is DataSuccess ) {
      emit(PostPlacesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(PlacesErrorState(dataState.exception!));
    }
  }
   void onPutPlaces(PutPlace event, Emitter<PlaceOfCafesState> emit) async {
    final dataState = await _putPlaceUseCase();

    if (dataState is DataSuccess ) {
      emit(PutPlacesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(PlacesErrorState(dataState.exception!));
    }
  }
   void onDeletPlaces(DeletPlace event, Emitter<PlaceOfCafesState> emit) async {
    final dataState = await _deletPlaceUseCase();

    if (dataState is DataSuccess ) {
      emit(DeletPlacesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(PlacesErrorState(dataState.exception!));
    }
  }
}
