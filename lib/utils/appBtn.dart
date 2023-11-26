import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ElevatedButton(onPressed: (){},
       child: Text("Login")),
    );
  }
}