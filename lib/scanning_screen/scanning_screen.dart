import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:o_r/bottom_navigation_screen/bottom_navigation_screen.dart';

import '../utils/constants/colors.dart';

class ScanningScreen extends StatefulWidget {
  const ScanningScreen({super.key});

  @override
  State<ScanningScreen> createState() => _ScanningScreenState();
}

class _ScanningScreenState extends State<ScanningScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )
      ..repeat();
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  void _showDoneDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/icons/man_avatar.png", height: 101, width: 101,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/done.png", height: 26, width: 26,),
                SizedBox(width: 5),
                Text("Device Connected"),
              ],
            )
          ],
        ),
      ),
    );

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop();
      Get.to(()=> BottomNavigationScreen());
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Scanning...",
            style: TextStyle(
              color: ORColors.buttonPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: RotationTransition(
                  turns: _rotationController,
                  child: Image.asset(
                    "assets/icons/scanning_blue.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                title: Text(
                  "Scanning...",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                  height: 8
              ),
              Text(
                "Select a device to Connect",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset("assets/icons/memory.png", height: 24, width: 24,),
                        title: Text(
                          "ID :123456",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: TextButton(
                            onPressed: (){
                              _showDoneDialog(context);
                            },
                            child: Text(
                              "Connect",
                              style: TextStyle(
                                fontSize: 14,
                                color: ORColors.primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                        ),
                      );
                    },
                  )
              )
            ],
          ),
        )

      // Scanning when no device found
      // Center(
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: [
      //       RotationTransition(
      //         turns: _rotationController,
      //         child: Image.asset(
      //           "assets/icons/scanning_grey.png",
      //           width: 120,
      //           height: 120,
      //         ),
      //       ),
      //       Image.asset(
      //         "assets/icons/bluetooth.png",
      //         width: 50,
      //         height: 50,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
