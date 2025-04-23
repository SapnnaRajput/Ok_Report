import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:o_r/utils/constants/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../bottom_navigation_screen/bottom_navigation_screen.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
void showWearerDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title Row with close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select/Switch the Wearer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ORColors.textPrimary),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
            SizedBox(height: 10),

            // Grid of users
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.7,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                wearerTile(image: 'assets/icons/user.png', name: 'John Doe', role: 'Father'),
                wearerTile(image: 'assets/icons/user.png', name: 'Clifford Sm..', role: 'Uncle'),
                wearerTile(image: 'assets/icons/user.png', name: 'Jennifer', role: 'Sister'),
                wearerTile(image: 'assets/icons/user.png', name: 'William Jon..', role: 'Brother'),
                wearerTile(image: 'assets/icons/user.png', name: 'Sara Jones', role: 'Wife'),
                wearerTile(image: 'assets/icons/add_more.png', name: 'Add More', role: ''),

              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget wearerTile({
  required String image,
  required String name,
  required String role,
  double? height,
  bool selected = false,
}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(image),
        backgroundColor: Colors.transparent,
        child: ClipOval(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),),
      SizedBox(height: 6),
      Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: selected ? Colors.blue : Colors.black, fontWeight: FontWeight.w600),
      ),
      Text(
        role,
        style: TextStyle(color: selected ? Colors.blueAccent : Colors.black54, fontSize: 12),
      ),
    ],
  );
}

class _HomeScreenState extends State<HomeScreen> {
  double bacValue = 0.03;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side: Profile + Name + Emoji
                Row(
                  children: [
                    // Profile image
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    SizedBox(width: 10),

                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Hey, ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "Michael Jones ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text("👋", style: TextStyle(fontSize: 16)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Right side: Notification + Headset
                Row(
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: Image.asset(
                            "assets/icons/notification.png",
                          height: 40,
                          width: 40,
                        )
                    ),
                    // SizedBox(width: 15),
                    IconButton(
                        onPressed: (){},
                        icon: Image.asset(
                          "assets/icons/customer_service.png",
                          height: 20,
                          width: 20,
                        )
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Gauge
              SizedBox(
                height: 136,
                width: 136,
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 0.08,
                      showLabels: false,
                      showTicks: false,
                      startAngle: 90,
                      endAngle: 450,
                      axisLineStyle: AxisLineStyle(
                        thickness: 0.20,
                        cornerStyle: CornerStyle.bothCurve,
                        color: Colors.grey.shade200,
                        thicknessUnit: GaugeSizeUnit.factor,
                      ),
                      pointers: <GaugePointer>[
                        RangePointer(
                          value: bacValue,
                          width: 0.20,
                          sizeUnit: GaugeSizeUnit.factor,
                          cornerStyle: CornerStyle.bothCurve,
                          gradient: SweepGradient(
                            colors: [
                              Color(0xff126712),
                              if (bacValue > 0.03) Colors.yellow,
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
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '$bacValue BAC',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1FA41F),
                                ),
                              ),
                              Text(
                                'Safe',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1FA41F),
                                ),
                              ),
                            ],
                          ),
                          angle: 90,
                          positionFactor: 0.1,
                        ),
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              // Labels below the gauge
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(radius: 6, backgroundColor: Colors.grey),
                      SizedBox(width: 5),
                      Text("Alcohol Limit"),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: const [
                      CircleAvatar(radius: 6, backgroundColor: Colors.green),
                      SizedBox(width: 5),
                      Text("Alcohol Consumed"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jhon Doe",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff252525))),
                      Text("Active Wearer", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff888888))),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(radius: 6, backgroundColor: Colors.green),
                      SizedBox(width: 5),
                      Text("Connected"),
                    ],
                  ),

                ],
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfoTile(
                      icon: Icons.location_on_outlined,
                      title: "Location",
                      subtitle: "Home Zone",
                      iconColor: Colors.blue,
                  ),
                  _buildInfoTile(
                    icon: Icons.bolt_outlined,
                    title: "Battery",
                    subtitle: "85%",
                    iconColor: Colors.blue,
                  ),
                ],
              ),
              SizedBox(height: 65),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: ()=> showWearerDialog(context),
                      child: Image.asset("assets/icons/chip.png", height: 60, width: 60,))
                ],
              ),

              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 0.50,
                    color: Colors.black.withOpacity(0.20),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recent Activity",
                        style: TextStyle(
                          color: ORColors.textPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoTile(
                              icon: Icons.verified_user_sharp,
                              title: "Safe level",
                              subtitle: "10 minutes ago",
                            iconColor: Colors.green,
                            titleColor: Colors.green
                          ),
                          Text(
                              "$bacValue BAC",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff4f4f4f)
                            ),
                          )
                        ],
                      ),

                      const Divider(thickness: 0.5,),

                      Row(
                        children: [
                          _buildInfoTile(
                              icon: Icons.location_on_sharp,
                              title: "Location Change",
                              titleColor: ORColors.primaryColor,
                              subtitle: "30 minutes ago",
                              iconColor: ORColors.primaryColor
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      )
    );
  }
  Widget _buildInfoTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color iconColor,
    Color? titleColor
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [Color(0xffe7e7e7), Colors.white],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Icon(icon, color: iconColor, size: 24),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: titleColor, fontSize: 16, fontWeight: FontWeight.w400)),
            Text(subtitle,
                style: TextStyle(color: ORColors.textSecondary, fontSize: 14)),
          ],
        ),
      ],
    );
  }



}


