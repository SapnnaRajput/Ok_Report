import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o_r/edit_profile/edit_profile_screen.dart';
import 'package:o_r/settings_screen/app_preferences/app_preferences.dart';
import 'package:o_r/settings_screen/event_&_ai_preferences/event_&_preferences_screen.dart';
import 'package:o_r/settings_screen/location_&_tracking_setting/location_and_tracking_setting.dart';
import 'package:o_r/settings_screen/safty_&_notification_setting/safty_&_notification_screen.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';
import 'package:o_r/utils/constants/colors.dart';

import '../settings_screen/device_&_bluetooth_setting/device_and_bluetooth_setting.dart';
import '../utils/common_widgets/or_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 5),
            Divider(
              thickness: 0.5,
            ),
            SizedBox(height: 15),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/icons/user.png'),
              ),
              title: ORTextWidget(
                  text: "Micheal Jones",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ORColors.primaryColor
              ),
              subtitle: ORTextWidget(
                  text: "@michealjones",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff252525)
              ),
              trailing: IconButton(
                  onPressed: () {
                    Get.to(()=> EditProfileScreen());
                  },
                  icon: Icon(
                    Icons.edit,
                  )),
            ),
            SizedBox(height: 15),
            Divider(
              thickness: 0.5,
            ),
            SizedBox(height: 15),
            ProfileContentWidget(leadingIcon: Icons.notifications, title: "Safety & Notification Settings", trailingIcon: Icons.arrow_forward_ios, onPressed: ()=> Get.to(()=> SafetyAndNotificationScreen()),),
            ProfileContentWidget(leadingIcon: Icons.celebration, title: "Event Mode & AI Preferences", trailingIcon: Icons.arrow_forward_ios, onPressed: ()=> Get.to(()=> EventAndAiPreferences())),
            ProfileContentWidget(leadingIcon: Icons.location_on, title: "Location & Tracking settings", trailingIcon: Icons.arrow_forward_ios, onPressed: ()=> Get.to(()=> LocationAndTrackingSetting())),
            ProfileContentWidget(leadingIcon: Icons.bluetooth, title: "Device & Bluetooth Settings", trailingIcon: Icons.arrow_forward_ios, onPressed: ()=> Get.to(()=> DeviceAndBluetoothSetting())),
            ProfileContentWidget(leadingIcon: Icons.settings, title: "App Preferences", trailingIcon: Icons.arrow_forward_ios, onPressed: ()=> Get.to(()=> AppPreferences())),
          ],
        ),
      ),
    );
  }
}

class ProfileContentWidget extends StatelessWidget {
  const ProfileContentWidget({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
    required this.onPressed
  });

  final IconData leadingIcon;
  final String title;
  final IconData trailingIcon;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ORColors.darkerGrey),
        ),
        trailing: Icon(
          trailingIcon,
          size: 16,
        ),
      ),
    );
  }
}
