// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/reservation_api_servece.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/reservation_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/reservation_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/reservation_repository.dart';
import 'package:dio/dio.dart';

class ReservationRepositoryImpl implements ReservationRepository {
  final ReservationApiService _reservationApiService;
  ReservationRepositoryImpl(
    this._reservationApiService,
  );

  @override
  Future<DataState<List<ReservationModel>>> getReservations() async {
    try {
      final httpResponse = await _reservationApiService.getReservations();

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
  Future<DataState<String>> deletReservations({required int id}) {
    // TODO: implement deletReservations
    throw UnimplementedError();
  }

  @override
  Future<DataState<ReservationEntity>> postReservations(
      {required ReservationEntity newReservationEntity}) {
    // TODO: implement postReservations
    throw UnimplementedError();
  }

  @override
  Future<DataState<ReservationEntity>> putReservations(
      {required int id, required ReservationEntity newReservationEntity}) {
    // TODO: implement putReservations
    throw UnimplementedError();
  }
}
