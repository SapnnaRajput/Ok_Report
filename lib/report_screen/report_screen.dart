import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../plan_screen/plan_screen.dart';
import '../utils/constants/colors.dart';
import 'graphChart_Custom.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Reports",
          style: TextStyle(
            color: ORColors.buttonPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wearer’s  Trend",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  "View last week ",
                  style: TextStyle(
                    color: ORColors.buttonPrimary,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const SizedBox(
              height: 350,
              child: Card(
                  color: Colors.white,
                   // child: graphChart_Custom()
              ),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 1,
              color: const Color(0xFFFFFFFF),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent Alerts',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    AlertRowReusable(
                      text: "High Level Alert",
                      timeAgo: "2 hours ago",
                      circleColor: const Color(0xFFDC2625),
                    ),
                    const SizedBox(height: 8),
                    AlertRowReusable(
                      text: "Approaching Limit",
                      timeAgo: "4 hours ago",
                      circleColor: const Color(0xFFD9FB00),
                    ),
                    const SizedBox(height: 8),
                    AlertRowReusable(
                      text: "Safe Zone",
                      timeAgo: "6 hours ago",
                      circleColor: const Color(0xFF049123),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PlanScreen()));
              },
              child: Card(
                elevation: 1,
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'AI Insights',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(color: const Color(0xFF2103C6).withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Based on your patterns, You’re likely to exceed your limit if consumption continuous at this rate. Consider slowing',
                            style: TextStyle(
                              color: Color(0xFF2103C6),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class AlertRowReusable extends StatelessWidget {
  final String text;
  final String timeAgo;
  final Color circleColor;

  AlertRowReusable({required this.text, required this.timeAgo, required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Circular colored container
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: circleColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10), // Add space between circle and text
        // Main text
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
        const Spacer(), // To push "2 hours ago" to the far right
        // Time ago text
        Text(
          timeAgo,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}










