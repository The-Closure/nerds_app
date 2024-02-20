import 'package:dashbord_cafe/features/place_of_study/data/data_sources/remote/place_api_service.dart';
import 'package:dashbord_cafe/features/place_of_study/data/repository/place_repository_impl.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/place_repository.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/usecases/get_places.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/remote/bloc/place_of_cafes_bloc.dart';
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

  //UseCases
  sl.registerSingleton<GetPlaceUseCase>(GetPlaceUseCase(sl()));

  // sl.registerSingleton<GetSavedArticleUseCase>(
  //   GetSavedArticleUseCase(sl())
  // );

  // sl.registerSingleton<SaveArticleUseCase>(
  //   SaveArticleUseCase(sl())
  // );

  // sl.registerSingleton<RemoveArticleUseCase>(
  //   RemoveArticleUseCase(sl())
  // );

  //Blocs
  sl.registerFactory<PlaceOfCafesBloc>(() => PlaceOfCafesBloc(sl()));

  // sl.registerFactory<LocalArticleBloc>(
  //   ()=> LocalArticleBloc(sl(),sl(),sl())
  // );
}
