import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../../utils/common_widgets/or_text_widget.dart';
import '../../utils/constants/colors.dart';
import '../widget/switch_widget.dart';

class DeviceAndBluetoothSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "Device & Bluetooth Setting"),
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
                text: "Pair/Unpair Bluetooth Device",
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