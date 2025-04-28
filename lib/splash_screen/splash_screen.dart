import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:o_r/auth/login_screen/login_screen.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/image_strings.dart';
import '../utils/constants/text_strings.dart';
import '../utils/common_widgets/or_text_widget.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context)  {
    return Container(
      color: ORColors.primaryBackground,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ORTextWidget(
                    text: ORText.onBoardingTitle1,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ORColors.primaryColor,
                  ),
                  ORTextWidget(
                    text: ORText.onBoardingSubTitle1,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ORColors.textSecondary,
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: Get.width,
                    child: Image.asset(
                      ORImage.onBoardingImage1, fit: BoxFit.cover,),
                  ),

                  SizedBox(height: 20,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ORTextWidget(
                        text: ORText.onBoardingText1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ORColors.textPrimary,
                      ),
                    ],
                  ),

                  const SizedBox(height: 25,),

                  SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const LoginScreen());
                        },
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
                            ORTextWidget(
                              text: ORText.getStarted,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
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