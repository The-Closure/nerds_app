// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';

abstract class PlaceOfCafesState extends Equatable {
  final List<PlaceEntity>? places;
  final PlaceEntity? place;
  final String? massege;

  final DioException? exception;
  const PlaceOfCafesState({
    this.places,
    this.place,
    this.massege,
    this.exception,
  });


  @override
  List<Object ?> get props => [places, place,massege ,exception];
}

class PlacesLoadingState extends PlaceOfCafesState {
  const PlacesLoadingState();
}

class PlacesDoneState extends PlaceOfCafesState {
  const PlacesDoneState(List<PlaceEntity> places) : super(places: places);
}

class PlacesErrorState extends PlaceOfCafesState {
  const PlacesErrorState(DioException exception) : super(exception: exception);
}
class PostPlacesDoneState extends PlaceOfCafesState {
  const PostPlacesDoneState(PlaceEntity place) : super(place: place);
}

class PutPlacesDoneState extends PlaceOfCafesState {
  const PutPlacesDoneState(PlaceEntity place) : super(place: place);
}
class DeletPlacesDoneState extends PlaceOfCafesState {
  const DeletPlacesDoneState(String massege) : super(massege: massege);
}