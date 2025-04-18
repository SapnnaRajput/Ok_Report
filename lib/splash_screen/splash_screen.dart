import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/image_strings.dart';
import '../utils/constants/text_strings.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ORColors.primaryBackground,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(ORText.onBoardingTitle1, style: TextStyle(
                      color: ORColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
                  const Text(ORText.onBoardingSubTitle1, style: TextStyle(
                      color: ORColors.textSecondary,
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),

                  const SizedBox(height: 10,),

                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Image.asset(
                      ORImage.onBoardingImage1, fit: BoxFit.cover,),
                  ),

                  SizedBox(height: 10,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(ORText.onBoardingText1, style: TextStyle(
                        color: ORColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,)),
                    ],
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ORColors.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ORText.getStarted,
                              style: TextStyle(
                                color: ORColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, color: ORColors.white),
                          ],
                        ),
                      )
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}