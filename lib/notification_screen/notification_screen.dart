import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../family_plan_home_screen/family_home_screen.dart';
import '../location_screen/emergency_screen.dart';
import '../utils/constants/colors.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({super.key});

  List<String> messages = [
    "John Doe alcohol level is dangerously high (0.15% BAC). Immediate action required!",
    "John Doe is nearing their alcohol threshold (0.08% BAC). Please monitor closely.",
    "John Doe has exited the designated safe zone (Home Area).",
    "John Doe has not moved for 3 minutes. Please check in on them immediately.",
    "John Doe confirmed they are safe after a check-in request."
  ];


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: ORAppBar(title: "Notification"),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final title = messages[index];
          final date = 'Apr ${index + 1}, 2025';

          final colors = index.isEven
              ? [const Color(0xFF97B500).withOpacity(0.1), const Color(0xFFFFFFFF)]
              : [const Color(0xFFCC3402).withOpacity(0.1), const Color(0xFFFFFFFF)];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: colors,
                ),
              ),
              child: Center(
                child: ListTile(
                  onTap: () => Get.to(()=> FamilyHomeScreen()),
                  leading: Image.asset('assets/icons/user.png'),
                  title: Text(
                    title,
                    style: GoogleFonts.openSans(fontSize: 10, color: Colors.black87),
                  ),
                  trailing: Text(
                    date,
                    style: GoogleFonts.openSans(fontSize: 10, color: Colors.black87),
                  ),
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
