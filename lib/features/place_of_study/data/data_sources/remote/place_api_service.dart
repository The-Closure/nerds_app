import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/place_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'place_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class PlaceApiService {
  factory PlaceApiService(Dio dio) = _PlaceApiService;

  @GET('/places/allplaces')
  Future<HttpResponse<List<PlaceModel>>> getPlaces();

  @POST('path')
  Future<HttpResponse<PlaceModel>> postPlace(
      {required PlaceModel newPlaceModel});

  @PUT('path')
  Future<HttpResponse<PlaceModel>> putPlace(
      {required int id, required PlaceModel newPlaceModel});
  @DELETE('path')
  Future<HttpResponse<String>> deletPlace({required int id});
}
