import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../widget/switch_widget.dart';

class DeviceAndBluetoothSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Device & Bluetooth Setting",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchWidget(title: "Wearable", isTrue: true),
            Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Pair/Unpair Bluetooth Device",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ORColors.textPrimary
                ),
              ),
            ),
            Divider(thickness: 0.5),

          ],
        ),
      ),
    );
  }

}