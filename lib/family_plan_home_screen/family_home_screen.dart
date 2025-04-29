import 'dart:math';

import 'package:flutter/material.dart';
import 'package:o_r/family_plan_home_screen/user_info_card.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
      appBar: const ORAppBar(title: "Family Plan"),
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
                    onPressed: () {}, child: const Row(
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
                    onPressed: () {}, child: const Row(
                  children: [
                    Text("Filter"),
                    SizedBox(width: 8,),
                    Icon(Icons.filter_alt_rounded)
                  ],
                )),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    for(int i = 0; i < 2 ; i++ )
                    Positioned(
                      left: i * 40,
                      child: Opacity(
                        opacity: 0.85,
                        child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        child: CircularPercentIndicator(
                          linearGradient: const LinearGradient(
                            colors: [
                              Color(0xFFF5A351), // Your first color
                              Color(0xFF126712), // Your second color
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                          ),
                          addAutomaticKeepAlive: true,
                          backgroundColor: Colors.white,
                          radius: 80.0,
                          lineWidth: 20.0,
                          animation: true,
                          restartAnimation: true,
                          reverse: true,
                          percent: 0.4,
                          center: ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/personFamilyplan.png', width: 120, height: 120,fit: BoxFit.cover,)),
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                        ),
                      ),
                    ),
                    for(int i = 0; i < 2 ; i++ )
                      Positioned(
                        right: i * 50,
                        child: Opacity(
                          opacity: 0.85,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                            child: CircularPercentIndicator(
                              backgroundColor: Colors.green,
                              radius: 80.0,
                              lineWidth: 20.0,
                              animation: true,
                              restartAnimation: true,
                              reverse: false,
                              percent: 0.7,
                              center: ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/personFamilyplan.png', width: 120, height: 120,fit: BoxFit.cover,)),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      child: CircularPercentIndicator(
                        linearGradient: const LinearGradient(
                          colors: [
                            Color(0xFF24CD24), // Your first color
                            Color(0xFF126712), // Your second color
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                        ),
                        backgroundColor: Colors.white,
                        radius: 80.0,
                        lineWidth: 20.0,
                        animation: true,
                        restartAnimation: true,
                        reverse: true,
                        percent: 0.3,
                        center: ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/personFamilyplan.png', width: 120, height: 120,fit: BoxFit.cover,)),
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
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
                const SizedBox(width: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: bacValue <= 0.03
                          ? const Color(0xff1FA41F)
                          : bacValue <= 0.05
                          ? const Color(0xffD9FB00)
                          : Colors.red,
                    ),
                    const SizedBox(width: 5),
                    const ORTextWidget(
                        text: "Alcohol Consumed",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: ORColors.textPrimary),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
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

// class UserGauge extends StatelessWidget {
//   final String imagePath;
//   final double bacValue;
//   final double size;
//
//   const UserGauge({
//     required this.imagePath,
//     required this.bacValue,
//     this.size = 150,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: size,
//       height: size,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           SfRadialGauge(
//             axes: <RadialAxis>[
//               RadialAxis(
//                 minimum: 0,
//                 maximum: 0.08,
//                 showLabels: false,
//                 showTicks: false,
//                 startAngle: 90,
//                 endAngle: 450,
//                 axisLineStyle: AxisLineStyle(
//                   thickness: 0.15,
//                   color: Colors.white,
//                   thicknessUnit: GaugeSizeUnit.factor,
//                   cornerStyle: CornerStyle.bothCurve,
//                 ),
//                 pointers: <GaugePointer>[
//                   RangePointer(
//                     value: bacValue,
//                     width: 0.15,
//                     sizeUnit: GaugeSizeUnit.factor,
//                     cornerStyle: CornerStyle.bothCurve,
//                     gradient: SweepGradient(
//                       colors: [
//                         const Color(0xff126712),
//                         if (bacValue > 0.03) Colors.orange,
//                         if (bacValue > 0.05) Colors.red,
//                       ],
//                       stops: [
//                         0.0,
//                         if (bacValue > 0.03) 0.6,
//                         if (bacValue > 0.05) 1.0,
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//
//           // Circular clipped image
//           ClipOval(
//             child: Image.asset(
//               imagePath,
//               width: size * 0.75,
//               height: size * 0.75,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//
// }
