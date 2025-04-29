import 'package:flutter/material.dart';
import 'package:o_r/family_plan_home_screen/user_info_card.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../utils/common_widgets/or_text_widget.dart';
import '../utils/constants/colors.dart';

class FamilyHomeScreen extends StatefulWidget {
  @override
  State<FamilyHomeScreen> createState() => _FamilyHomeScreenState();
}

class _FamilyHomeScreenState extends State<FamilyHomeScreen> {
  final List<String> userImages = [
    'assets/icons/user.png',
    'assets/icons/user.png',
    'assets/icons/user.png',
    'assets/icons/user.png',
    'assets/icons/user.png',
  ];
  double bacValue = 0.05;

  @override
  Widget build(BuildContext context) {
    final double overlap = 60;

    return Scaffold(
      appBar: ORAppBar(title: "Family Plan"),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black.withOpacity(0.1),
                          width: 1
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    onPressed: () {}, child: Row(
                      children: [
                        Text("Sort by"),
                        SizedBox(width: 8,),
                        Icon(Icons.keyboard_arrow_down_sharp)
                      ],
                    )),
                TextButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black.withOpacity(0.1),
                            width: 1
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    onPressed: () {}, child: Row(
                  children: [
                    Text("Filter"),
                    SizedBox(width: 8,),
                    Icon(Icons.filter_alt_rounded)
                  ],
                )),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  for (int i = 0; i < userImages.length && i < 5; i++)
                    Positioned(
                      left: i * overlap,
                      child: UserGauge(
                        imagePath: userImages[i],
                        bacValue: 0.03 + i * 0.01,
                      ),
                    ),

                  // "+1" Indicator if more users exist
                  if (userImages.length > 5)
                    Positioned(
                      left: 5 * overlap + 20,
                      top: 60,
                      child: Text(
                        '+${userImages.length - 5}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    CircleAvatar(radius: 6, backgroundColor: Colors.grey),
                    SizedBox(width: 5),
                    ORTextWidget(
                      text: "Alcohol Limit",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: ORColors.textPrimary,
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: bacValue <= 0.03
                          ? Color(0xff1FA41F)
                          : bacValue <= 0.05
                          ? Color(0xffD9FB00)
                          : Colors.red,
                    ),
                    SizedBox(width: 5),
                    ORTextWidget(
                        text: "Alcohol Consumed",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: ORColors.textPrimary),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return UserInfoCard(
                      name: "William Jones",
                      battery: "50%",
                      alcoholLimit: "0.08",
                      location: "Home Zone",
                      imagePath: "assets/icons/user.png",
                      onPressed: (){}
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserGauge extends StatelessWidget {
  final String imagePath;
  final double bacValue;
  final double size;

  const UserGauge({
    required this.imagePath,
    required this.bacValue,
    this.size = 150,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                minimum: 0,
                maximum: 0.08,
                showLabels: false,
                showTicks: false,
                startAngle: 90,
                endAngle: 450,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.15,
                  color: Colors.white,
                  thicknessUnit: GaugeSizeUnit.factor,
                  cornerStyle: CornerStyle.bothCurve,
                ),
                pointers: <GaugePointer>[
                  RangePointer(
                    value: bacValue,
                    width: 0.15,
                    sizeUnit: GaugeSizeUnit.factor,
                    cornerStyle: CornerStyle.bothCurve,
                    gradient: SweepGradient(
                      colors: [
                        const Color(0xff126712),
                        if (bacValue > 0.03) Colors.orange,
                        if (bacValue > 0.05) Colors.red,
                      ],
                      stops: [
                        0.0,
                        if (bacValue > 0.03) 0.6,
                        if (bacValue > 0.05) 1.0,
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Circular clipped image
          ClipOval(
            child: Image.asset(
              imagePath,
              width: size * 0.75,
              height: size * 0.75,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
