// ignore_for_file: prefer_const_constructors
import 'package:dashbord_cafe/config/bloc_integration.dart';
import 'package:dashbord_cafe/config/di.dart';
import 'package:dashbord_cafe/config/theme/bloc/theme_app_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/base_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dashbord_cafe/injection_container.dart';
import 'package:shimmer/shimmer.dart';

import 'core/constants/constants.dart';
import 'features/place_of_study/presentation/pages/place_page.dart';

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
            // home: Artbord1(),
            home: Basepage(),
          );
        },
      ),
    );
  }
}

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 182, 208, 219),
                  highlightColor: Color.fromARGB(255, 168, 189, 227),
                  child: Container(
                    width: width - 50,
                    height: height / 5,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 182, 208, 219),
                  highlightColor: Color.fromARGB(255, 168, 189, 227),
                  child: Container(
                    width: width - 50,
                    height: height / 8,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 182, 208, 219),
                  highlightColor: Color.fromARGB(255, 168, 189, 227),
                  child: Container(
                    width: width - 50,
                    height: height / 5,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 182, 208, 219),
                  highlightColor: Color.fromARGB(255, 168, 189, 227),
                  child: Container(
                    width: width - 50,
                    height: height / 8,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 182, 208, 219),
                  highlightColor: Color.fromARGB(255, 168, 189, 227),
                  child: Container(
                    width: width - 50,
                    height: height / 5,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 182, 208, 219),
                  highlightColor: Color.fromARGB(255, 168, 189, 227),
                  child: Container(
                    width: width - 50,
                    height: height / 8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 237, 229),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
