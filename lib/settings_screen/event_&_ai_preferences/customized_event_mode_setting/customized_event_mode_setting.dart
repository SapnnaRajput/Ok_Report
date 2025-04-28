import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o_r/settings_screen/event_&_ai_preferences/customized_event_mode_setting/group_monitoring_alerts/group_monitoring_alert_screen.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../../../utils/common_widgets/or_text_widget.dart';
import '../../../utils/constants/colors.dart';

class CustomizedEventModeSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "Customized Event Mode Setting"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ORTextWidget(
                    text: "Set Event Duration",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ORColors.textPrimary
                ),
                SizedBox(
                  height: 32,
                  // width: 104,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ORColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.white, size: 18),
                        SizedBox(width: 6), // spacing between icon and text
                        Text(
                          "Hours",
                          style: GoogleFonts.openSans(
                            color: ORColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            ORTextWidget(
                text: "(Event Mode turns off automatically after set time)",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff5D5D5D),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(thickness: 0.5, color: ORColors.textSecondary),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ORTextWidget(
                    text: "Set Safe Drinking Limit",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ORColors.textPrimary
                ),
                SizedBox(
                  height: 32,
                  // width: 104,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ORColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.white, size: 18),
                        SizedBox(width: 6), // spacing between icon and text
                        Text(
                          "BAC",
                          style: GoogleFonts.openSans(
                            color: ORColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            ORTextWidget(
              text: "(Event Mode turns off automatically after set time)",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff5D5D5D),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(thickness: 0.5, color: ORColors.textSecondary),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ORTextWidget(
                  text: "Group Monitoring & Alerts",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ORColors.textPrimary,
                ),
                IconButton(onPressed: (){
                  Get.to(()=> GroupMonitoringAlertScreen());
                }, icon: Icon(Icons.arrow_forward_ios, size: 20,)
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}

