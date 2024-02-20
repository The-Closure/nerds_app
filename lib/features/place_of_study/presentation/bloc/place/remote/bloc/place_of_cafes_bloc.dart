
import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/usecases/get_places.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/remote/bloc/place_of_cafes_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/remote/bloc/place_of_cafes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaceOfCafesBloc extends Bloc<PlaceOfCafesEvent,PlaceOfCafesState> {
  
  final GetPlaceUseCase _getPlaceUseCase;
  
  PlaceOfCafesBloc(this._getPlaceUseCase) : super(const PlacesLoadingState()){
    on <GetPlaces> (onGetPlaces);
  }


  void onGetPlaces(GetPlaces event, Emitter < PlaceOfCafesState > emit) async {
    final dataState = await _getPlaceUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(
        PlacesDoneState(dataState.data!)
      );
    }
    
    if (dataState is DataFailed) {
      emit(
        PlacesErrorState(dataState.exception!)
      );
    }
  }
  
}