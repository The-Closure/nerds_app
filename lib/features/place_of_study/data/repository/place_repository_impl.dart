// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/place_api_service.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/place_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/place_repository.dart';
import 'package:dio/dio.dart';

class PlaceRepositoryImpl implements PlaceRepository {
  final PlaceApiService _placeApiService;
  PlaceRepositoryImpl(
    this._placeApiService,
  );

  @override
  Future<DataState<List<PlaceModel>>> getplaces() async {
    try {
      final httpResponse = await _placeApiService.getPlaces();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<List<PlaceEntity>> getSavedPlace() {
    // TODO: implement getSavedPlace
    throw UnimplementedError();
  }

  @override
  Future<void> removePlace(PlaceEntity place) {
    // TODO: implement removePlace
    throw UnimplementedError();
  }

  @override
  Future<void> savePlace(PlaceEntity place) {
    // TODO: implement savePlace
    throw UnimplementedError();
  }
}
