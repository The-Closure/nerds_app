import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/place_model.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'place_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class PlaceApiService {
  factory PlaceApiService(Dio dio) = _PlaceApiService;

  @GET('/places/allplaces')
  Future<HttpResponse<List<PlaceModel>>> getPlaces();

  @POST('/places/newplace')
  Future<HttpResponse<PlaceModel>> postPlace(
      {@Body() required PlaceEntity newPlaceModel});

  @PUT('/places/edit/')
  Future<HttpResponse<PlaceModel>> putPlace(
      {@Header('')required int id, @Body() required PlaceEntity newPlaceModel});
  @DELETE('/places/delete/')
  Future<HttpResponse<String>> deletPlace({@Header('')required int id});
}
