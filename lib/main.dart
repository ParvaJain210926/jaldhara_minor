import 'package:flutter/material.dart';
import 'package:jaldhara/modules/home/home_view.dart';
import 'package:jaldhara/modules/login/login_view.dart';
import 'package:jaldhara/modules/splash.dart';
//import 'package:jaldhara/modules/splash.dart';
// import 'package:jaldhara/modules/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
      
    );
  }
}

