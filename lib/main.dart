// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/remote/bloc/place_of_cafes_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/remote/bloc/place_of_cafes_event.dart';
import 'package:dashbord_cafe/injection_container.dart';

import 'features/place_of_study/presentation/pages/place_cafes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlaceOfCafesBloc>(
      create: (context) => sl()..add(const GetPlaces()),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: PlaceCafes()),
    );
  }
}
