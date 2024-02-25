import 'package:dashbord_cafe/config/theme/bloc/theme_app_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/place_api_service.dart';
import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/reservation_api_service.dart';
import 'package:dashbord_cafe/features/place_of_study/data/repository/place_repository_impl.dart';
import 'package:dashbord_cafe/features/place_of_study/data/repository/reservation_repository_impl.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/place_repository.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/reservation_repository.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/usecases/places.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/usecases/reservation.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/reservattion/bloc/reservation_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  // sl.registerSingleton<AppDatabase>(database);

  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<PlaceApiService>(PlaceApiService(sl()));

  sl.registerSingleton<PlaceRepository>(PlaceRepositoryImpl(
    sl(),
  ));


  sl.registerSingleton<ReservationApiService>(ReservationApiService(sl()));

  sl.registerSingleton<ReservationRepository>(ReservationRepositoryImpl(
    sl(),
  ));

  //UseCases
  sl.registerSingleton<GetPlaceUseCase>(GetPlaceUseCase(sl()));
  sl.registerSingleton<PostPlaceUseCase>(PostPlaceUseCase(sl()));
  sl.registerSingleton<PutPlaceUseCase>(PutPlaceUseCase(sl()));
  sl.registerSingleton<DeletPlaceUseCase>(DeletPlaceUseCase(sl()));


  sl.registerSingleton<GetReservationUseCase>(GetReservationUseCase(sl()));
  sl.registerSingleton<PostReservationUseCase>(PostReservationUseCase(sl()));
  sl.registerSingleton<PutReservationUseCase>(PutReservationUseCase(sl()));
  sl.registerSingleton<DeletReservationUseCase>(DeletReservationUseCase(sl()));
  // sl.registerSingleton<GetSavedArticleUseCase>(
  //   GetSavedArticleUseCase(sl())
  // );

  // sl.registerSingleton<SaveArticleUseCase>(
  //   SaveArticleUseCase(sl())
  // );

  // sl.registerSingleton<RemoveArticleUseCase>(
  //   RemoveArticleUseCase(sl())
  // );

  // Blocs
  sl.registerFactory<PlaceOfCafesBloc>(() => PlaceOfCafesBloc(sl(),sl(),sl(),sl()));
  sl.registerFactory<ReservationBloc>(() => ReservationBloc(sl(),sl(),sl(),sl()));
  sl.registerFactory<ThemeAppBloc>(() => ThemeAppBloc());

  // sl.registerFactory<LocalArticleBloc>(
  //   ()=> LocalArticleBloc(sl(),sl(),sl())
  // );
}
