import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jaldhara/modules/login/login_view.dart';
import 'package:jaldhara/resources/app_colors.dart';

import '../resources/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),()=> Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.logo2))
      ),
    );
  }
}

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // continueAnimation();
//     Timer(
//       const Duration(seconds: 2), () => Get.toNamed(AppRoutes.loginView),
//       //       () => Navigator.of(context).pushReplacement(
//       //           MaterialPageRoute(builder: (context) => const LoginView()))
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//             color: AppColors.white,
//             image: DecorationImage(
//                 fit: BoxFit.cover, image: AssetImage(AppImages.splash))));
//   }

