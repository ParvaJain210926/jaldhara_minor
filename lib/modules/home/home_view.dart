import 'package:flutter/material.dart';
import 'package:jaldhara/modules/signup/signup_view.dart';
import 'package:jaldhara/resources/app_colors.dart';

import 'package:jaldhara/resources/app_images.dart';
import 'package:jaldhara/utils/appBtn.dart';

import '../../utils/appStrings.dart';
import '../../utils/appTxtField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.loginColor,
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(AppImages.loginPage))),
          child: Center(
            child: Container(
              height: 550,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: AppColors.txtbox,
              ),
              child: Text('Welcome to Home Screen',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)
            ),  
          ),
          
        ),
      
        
      ),
      
    
    );
  }
}
