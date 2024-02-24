// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/user_api_service.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/user_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/user_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiService _userApiService;
  UserRepositoryImpl(
    this._userApiService,
  );

  @override
  Future<DataState<List<UserModel>>> getUsers() async {
    try {
      final httpResponse = await _userApiService.getUsers();

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
  Future<DataState<String>> deletUser({required int id}) {
    // TODO: implement deletUser
    throw UnimplementedError();
  }

  @override
  Future<DataState<UserEntity>> postUser(
      {required UserEntity newUserEntity}) {
    // TODO: implement postUser
    throw UnimplementedError();
  }

  @override
  Future<DataState<UserEntity>> putUser(
      {required int id, required UserEntity newUserEntity}) {
    // TODO: implement putUser
    throw UnimplementedError();
  }
}
