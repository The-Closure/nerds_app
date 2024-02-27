import 'package:dashbord_cafe/features/place_of_study/domain/entities/reservation_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/reservation_model.dart';

part 'reservation_api_service.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class ReservationApiService {
  factory ReservationApiService(Dio dio) = _ReservationApiService;

  @GET('/reservation/getAll')
  Future<HttpResponse<List<ReservationModel>>> getReservations();

  @POST('path')
  Future<HttpResponse<ReservationModel>> postReservation(
      {@Body() required ReservationEntity newReservationModel});

  @PUT('path')
  Future<HttpResponse<ReservationModel>> putReservation(
      {@Query('') required int id,@Body() required ReservationEntity newReservationModel});

  @DELETE('path')
  Future<HttpResponse<String>> deletReservation({@Query('') required int id});
}
