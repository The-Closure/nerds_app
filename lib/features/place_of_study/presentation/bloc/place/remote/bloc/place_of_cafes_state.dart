// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';


abstract class PlaceOfCafesState extends Equatable {
  final List<PlaceEntity> ? places;
  final DioException ? exception;
  const PlaceOfCafesState({
    this.places,
    this.exception,
  });


  @override
  List<Object> get props => [places!, exception!];
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