
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/constants/colors.dart';


class graphChart_Custom extends StatefulWidget {
  const graphChart_Custom({super.key});

  @override
  State<graphChart_Custom> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<graphChart_Custom> {
  List<Color> gradientColors = [
    const Color(0xFFADB7F9),
    const Color(0xFFADB7F9),
    const Color(0xFFADB7F9),
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),

  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    List<String> weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    List<String> dates = List.generate(6, (index) {
      // Calculate date for the current day (Mon, Tue, ...)
      DateTime day = currentDate.subtract(Duration(days: currentDate.weekday - (index + 1)));
      return DateFormat('d').format(day);
    });

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          // Days of week header with green background
          const Text(
            'Overall Report',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return Container(
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Text(
                        weekdays[index],
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        dates[index],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
          // Chart with toggle button
          Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.70,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 8,
                    top: 12,  // Reduced top padding
                    bottom: 12,
                  ),
                  child: LineChart(
                    mainData(),
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Alcohol Level",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ORColors.buttonPrimary,),
              ),
              Text(
                "0.06%",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ORColors.error),
              ),
            ],
          ),
        ],
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      titlesData: const FlTitlesData(
        show: false,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: true),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false, // This hides the border around the chart
      ),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: false,
        drawVerticalLine: true,
        verticalInterval: 2, // Creates 5 intervals (0-10 divided by 2)
        getDrawingVerticalLine: (value) {
          // For 6 vertical lines (including start/end), use maxX divided by 5
          return FlLine(
            color: Colors.grey.withOpacity(0.5),
            strokeWidth: 1,
          );
        },
      ),
      minX: 0,
      maxX: 10, // Adjusted for 6 days (0-10 with interval)
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 5),
            FlSpot(2, 6),
            FlSpot(4, 5),
            FlSpot(6, 5.1),
            FlSpot(8, 4),
            FlSpot(10, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                gradientColors.first, // Full purple at top
                Colors.white.withOpacity(0.1), // Near-transparent white at bottom
              ],
              stops: const [0.0, 1.0], // Full gradient span
            ),
          ),
        ),
      ],
    );
  }
}