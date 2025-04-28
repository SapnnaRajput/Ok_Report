import 'package:flutter/material.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../../../../utils/common_widgets/or_text_widget.dart';
import '../../../../utils/constants/colors.dart';

class GroupMonitoringAlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "Group Monitoring alerts"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GroupMonitoring(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget GroupMonitoring() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Container(
        width: 247,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 0.5, color: Colors.black.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 1.5),
              blurRadius: 1,
              spreadRadius: 1.5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/icons/user.png",
                height: 111,
                width: 173,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 12),
              ORTextWidget(
                text: "Clifford Smith",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ORColors.primaryColor,
              ),
              SizedBox(height: 8),
              ORTextWidget(
                text: "BAC % - 0.05%",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff454545),
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, size: 16, color: Colors.grey[700]),
                  SizedBox(width: 6),
                  Expanded(
                    child:
                    ORTextWidget(
                      text: "Champion Bar & Restaurant",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff454545),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
