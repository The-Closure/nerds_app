// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/room_api_service.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/room_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/room_repository.dart';
import 'package:dio/dio.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomApiService _roomApiService;
  RoomRepositoryImpl(
    this._roomApiService,
  );

  @override
  Future<DataState<List<RoomModel>>> getRooms({required int idPlace}) async {
    try {
      final httpResponse = await _roomApiService.getRooms(idPlace: idPlace);

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
  Future<DataState<String>> deletRooms({required int id}) {
    // TODO: implement deletRooms
    throw UnimplementedError();
  }

  @override
  Future<DataState<RoomEntity>> postRooms({required RoomEntity newRoomEntity}) {
    // TODO: implement postRooms
    throw UnimplementedError();
  }

  @override
  Future<DataState<RoomEntity>> putRooms(
      {required int id, required RoomEntity newRoomEntity}) {
    // TODO: implement putRooms
    throw UnimplementedError();
  }
}
