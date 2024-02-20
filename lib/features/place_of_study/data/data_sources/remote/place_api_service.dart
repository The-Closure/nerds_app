import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/place_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'place_api_service.g.dart';

@RestApi(baseUrl: placeAPIBaseURL)
abstract class PlaceApiService {
  factory PlaceApiService(Dio dio) = _PlaceApiService;

  @GET('/places/allplaces')
  Future<HttpResponse<List<PlaceModel>>> getPlaces();
}
