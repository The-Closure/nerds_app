// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'place_bloc.dart';

sealed class PlaceState {
  const PlaceState();
}

final class PlaceInitial extends PlaceState {}

class LoadingPlaceState extends PlaceState {}

class SuccessToLoadPlaceDetailsState extends PlaceState {}

class NavigateToNewBarState extends PlaceState {
  int newIndex;
  NavigateToNewBarState({
    required this.newIndex,
  });
}

class ErrorPlaceState extends PlaceState {}

class ExceptionPlaceState extends PlaceState {}
