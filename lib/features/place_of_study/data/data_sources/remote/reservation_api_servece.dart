import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/reservation_model.dart';

part 'reservation_api_servece.g.dart';

@RestApi(baseUrl: aPIBaseURL)
abstract class ReservationApiService {
  factory ReservationApiService(Dio dio) = _ReservationApiService;

  @GET('/Reservations/allReservations')
  Future<HttpResponse<List<ReservationModel>>> getReservations();

  @POST('path')
  Future<HttpResponse<ReservationModel>> postReservation(
      {required ReservationModel newReservationModel});

  @PUT('path')
  Future<HttpResponse<ReservationModel>> putReservation(
      {required int id, required ReservationModel newReservationModel});

  @DELETE('path')
  Future<HttpResponse<String>> deletReservation({required int id});
}
