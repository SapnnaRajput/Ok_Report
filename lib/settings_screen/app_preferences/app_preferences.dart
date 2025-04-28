import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../../utils/common_widgets/or_text_widget.dart';
import '../../utils/constants/colors.dart';

class AppPreferences extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "App Preferences"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ORTextWidget(
                text: "Language Selection",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ORColors.textPrimary,
              ),
            ),
            Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ORTextWidget(
                text: "Light Mode/Dark Mode",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ORColors.textPrimary,
              ),
            ),
            Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ORTextWidget(
                text: "App Versions & Updates",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ORColors.textPrimary,
              ),
            ),
            Divider(thickness: 0.5),

          ],
        ),
      ),
    );
  }

}