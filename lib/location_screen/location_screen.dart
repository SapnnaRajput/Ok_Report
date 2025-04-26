import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class LocationScreen extends StatelessWidget{
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Locating John Doe...",
          style: TextStyle(
            color: ORColors.buttonPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),


    );
  }

}