// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/tables_categry_api_servece.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/tables_categry_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/tables_categry_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/tables_categry_repository.dart';
import 'package:dio/dio.dart';

class TablesCategryRepositoryImpl implements TablesCategryRepository {
  final TablesCategryApiService _tablesCategryApiService;
  TablesCategryRepositoryImpl(
    this._tablesCategryApiService,
  );

  @override
  Future<DataState<List<TablesCategryModel>>> getTablesCategrys() async {
    try {
      final httpResponse = await _tablesCategryApiService.getTablesCategrys();

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
  Future<DataState<String>> deletTablesCategry({required int id}) {
    // TODO: implement deletTablesCategry
    throw UnimplementedError();
  }

  @override
  Future<DataState<TablesCategryEntity>> postTablesCategry(
      {required TablesCategryEntity newTablesCategryEntity}) {
    // TODO: implement postTablesCategry
    throw UnimplementedError();
  }

  @override
  Future<DataState<TablesCategryEntity>> putTablesCategry(
      {required int id, required TablesCategryEntity newTablesCategryEntity}) {
    // TODO: implement putTablesCategry
    throw UnimplementedError();
  }
}
