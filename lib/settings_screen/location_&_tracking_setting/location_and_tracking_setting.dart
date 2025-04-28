import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../../utils/common_widgets/or_text_widget.dart';
import '../../utils/constants/colors.dart';
import '../widget/switch_widget.dart';

class LocationAndTrackingSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "Location & Tracking Setting"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchWidget(title: "Wearable", isTrue: true),
            Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ORTextWidget(
                text: "Set Safe Zones",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ORColors.textPrimary,
              ),
            ),
            Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ORTextWidget(
                text: "View Location History",
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