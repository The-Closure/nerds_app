// ignore_for_file: prefer_const_constructors
import 'package:dashbord_cafe/config/bloc_integration.dart';
import 'package:dashbord_cafe/config/di.dart';
import 'package:dashbord_cafe/config/theme/bloc/theme_app_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/reservattion/bloc/reservation_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/reservattion/bloc/reservation_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/base_Page.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/first_pages/splash_page.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/first_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dashbord_cafe/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await initializeDependencies();

  Bloc.observer = MyBlocObserver();
  runApp(BlocProvider<ThemeAppBloc>(
    create: (context) => sl<ThemeAppBloc>()..add(SetInitialThemeApp()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlaceOfCafesBloc>(
          create: (context) => sl<PlaceOfCafesBloc>()..add(const GetPlaces()),
        ),
        // BlocProvider<ReservationBloc>(
        //  create: (context) => sl<ReservationBloc>()..add(const GetReservations()
        // ),)
      ],
      child: BlocBuilder<ThemeAppBloc, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false, theme: state,
            home: Basepage(),
            // home:PageSplash(),
          );
        },
      ),
    );
  }
}
