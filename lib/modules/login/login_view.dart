import 'package:flutter/material.dart';
import 'package:jaldhara/resources/app_colors.dart';

import 'package:jaldhara/resources/app_images.dart';
import 'package:jaldhara/utils/appBtn.dart';

import '../../utils/appStrings.dart';
import '../../utils/appTxtField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Login"),
                      
                       Text("SignUp"),
                      ]

                    ),
                  ),
                  SizedBox(height: 50),
                  TxtField(
                    // controller: loginController.mobno_ctrl,
                    obscure: false,
                    icon: const Icon(Icons.phone),
                    hint: AppStrings.mobno,
                    keyboard: TextInputType.number,
                  ),
                  TxtField(
                    // controller: loginController.mobno_ctrl,
                    obscure: false,
                    icon: const Icon(Icons.password),
                    hint: AppStrings.password,
                    keyboard: TextInputType.emailAddress,
                  ),
                  Text("Forgot Password?"),
                  AppButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
