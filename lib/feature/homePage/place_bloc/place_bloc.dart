import 'package:bloc/bloc.dart';

part 'place_event.dart';
part 'place_state.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  PlaceBloc() : super(PlaceInitial()) {
    on<NavigateToNewBarEvent>((event, emit) {
      emit(NavigateToNewBarState(newIndex: event.newIndex));
    });
  }
}
