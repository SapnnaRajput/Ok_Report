import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:o_r/scanning_screen/scanning_screen.dart';

import '../utils/constants/colors.dart';

class ConnectToChipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Connect a chip",
          style: TextStyle(
            color: ORColors.buttonPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\"Please connect your chip via Bluetooth to enable real-time alcohol tracking and safety alerts. Ensure Bluetooth is turned on and pair your device in the app settings\"",
              style: TextStyle(
                color: ORColors.darkerGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),

            Image.asset(
              "assets/images/girl_avatar.png",
              width: Get.width*0.49,
              height: Get.height*0.60,
            ),

            SizedBox(
                height: 50,
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () => Get.to(()=> ScanningScreen()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ORColors.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: ORColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
