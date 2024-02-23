// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'place_bloc.dart';

sealed class PlaceEvent {
  const PlaceEvent();
}

class NavigateToNewBarEvent extends PlaceEvent {
  int newIndex;
  NavigateToNewBarEvent({
    required this.newIndex,
  });
}
