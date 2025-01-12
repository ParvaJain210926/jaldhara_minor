import 'package:flutter/material.dart';
import 'package:jaldhara/modules/home/home_view.dart';
import 'package:jaldhara/modules/signup/signup_view.dart';
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
                        Text("Login"),
                      
                       GestureDetector(onTap: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext (context) => SignUpView())));
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignUpView()),
  );

                       },child: Text("SignUp")),
                      ]

                    ),
                  ),
                  SizedBox(height: 10),
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
                  ElevatedButton(onPressed: (){

                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
                  }, child: Text('Login'))
  //                 GestureDetector(onTap: (){
  //                   debugPrint('tapped');
  //                   Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const HomeScreen()),
  // );
  //                 }, child: AppButton(label: 'Login',)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
