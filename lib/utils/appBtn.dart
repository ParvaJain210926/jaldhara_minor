import 'dart:ffi';

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
final String label;
//  final VoidCallback onPressed;
   AppButton({super.key, required this.label,
  //  required this.onPressed
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      child: ElevatedButton(onPressed: (){},
       child: Text(label)),
    );
  }
}