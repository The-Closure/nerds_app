import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/user_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class UserApiService {
  factory UserApiService(Dio dio) = _UserApiService;

  @GET('/Users/allUsers')
  Future<HttpResponse<List<UserModel>>> getUsers();

  @POST('path')
  Future<HttpResponse<UserModel>> postUser({required UserEntity newUserModel});

  @PUT('path')
  Future<HttpResponse<UserModel>> putUser(
      {required int id, required UserEntity newUserModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletUser({required int id});
}
