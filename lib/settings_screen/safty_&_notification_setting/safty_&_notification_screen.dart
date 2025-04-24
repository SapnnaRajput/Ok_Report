import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../widget/switch_widget.dart';

class SafetyAndNotificationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Safty & Notification Setting",
          style: TextStyle(
            color: ORColors.buttonPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SwitchWidget(title: "Fall Detection Alert", isTrue: true),
            Divider(thickness: 0.5),
            SwitchWidget(title: "Alcohol Limit Alert", isTrue: true),
            Divider(thickness: 0.5),
            SwitchWidget(title: "Driving Mode Alert", isTrue: true),
            Divider(thickness: 0.5),
            SwitchWidget(title: "Emergency SOS Alert", isTrue: true),
            Divider(thickness: 0.5),
            SwitchWidget(title: "Geo-Fencing Alert", isTrue: true),
            Divider(thickness: 0.5),
          ],
        ),
      ),
    );
  }

}

