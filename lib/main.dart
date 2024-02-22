import 'package:flutter/material.dart';
import 'package:reservations/feature/auth/application_details_screen/details_screen.dart';
import 'package:reservations/feature/auth/login_screen/login_screen.dart';
import 'package:reservations/feature/auth/registration_method_screen/registration_method_screen.dart';
import 'package:reservations/feature/auth/sign_up_screen/sign_up_screen.dart';
import 'package:reservations/feature/auth/splash_screen/splash_screen.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:  MyHomePage(),
    );
  }
}

 class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupScreen();
  }
}