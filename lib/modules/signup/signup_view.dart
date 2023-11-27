import 'package:flutter/material.dart';
import 'package:jaldhara/modules/login/login_view.dart';
import 'package:jaldhara/resources/app_colors.dart';

import 'package:jaldhara/resources/app_images.dart';
import 'package:jaldhara/utils/appBtn.dart';

import '../../utils/appStrings.dart';
import '../../utils/appTxtField.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                    height: 100,
                  width: 150,
                  decoration: BoxDecoration( image: DecorationImage(image: AssetImage('assets/Images/iconlogo.png'))),
                    
                    ),
                    SizedBox(height: 40,),
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
                          GestureDetector(
                              onTap: () {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext (context) => SignUpView())));
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()),
                                );
                              },
                              child: Text("Login")),
                          Text("SignUp"),
                        ]),
                  ),
                  SizedBox(height: 10),
                  TxtField(
                    // controller: loginController.mobno_ctrl,
                    obscure: false,
                    icon: const Icon(Icons.supervised_user_circle),
                    hint: AppStrings.username,
                    keyboard: TextInputType.none,
                  ),
                  TxtField(
                    // controller: loginController.mobno_ctrl,
                    obscure: false,
                    icon: const Icon(Icons.mail),
                    hint: AppStrings.email,
                    keyboard: TextInputType.emailAddress,
                  ),
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
                    hint: AppStrings.newPassword,
                    keyboard: TextInputType.visiblePassword,
                  ),
                  ElevatedButton(onPressed: (){

                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const LoginScreen()),
  );
                  }, child: Text('Sign Up')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
