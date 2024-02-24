// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/table_api_service.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/table_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/table_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/table_repository.dart';
import 'package:dio/dio.dart';

class TableRepositoryImpl implements TableRepository {
  final TableApiService _tableApiService;
  TableRepositoryImpl(
    this._tableApiService,
  );

  @override
  Future<DataState<List<TableModel>>> getTables({required int idRoom}) async {
    try {
      final httpResponse = await _tableApiService.getTables();

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
  Future<DataState<String>> deletTable({required int id}) {
    // TODO: implement deletTable
    throw UnimplementedError();
  }

  @override
  Future<DataState<TableEntity>> postTable(
      {required TableEntity newTableEntity}) {
    // TODO: implement postTable
    throw UnimplementedError();
  }

  @override
  Future<DataState<TableEntity>> putTable(
      {required int id, required TableEntity newTableEntity}) {
    // TODO: implement putTable
    throw UnimplementedError();
  }
}
