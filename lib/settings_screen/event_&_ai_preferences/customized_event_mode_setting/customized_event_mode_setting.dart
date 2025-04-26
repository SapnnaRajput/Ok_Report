import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CustomizedEventModeSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Customized Event Mode Setting",
          style: TextStyle(
            color: ORColors.buttonPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Set Event Duration"),
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
                          style: TextStyle(
                            color: ORColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Text("(Event Mode turns off automatically after set time)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(thickness: 0.5, color: ORColors.textSecondary),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Set Safe Drinking Limit"),
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
                          style: TextStyle(
                            color: ORColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Text("(Event Mode turns off automatically after set time)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(thickness: 0.5, color: ORColors.textSecondary),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Group Monitoring & Alerts",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ORColors.textPrimary
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, size: 20,)
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}

