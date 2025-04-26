import 'package:flutter/material.dart';
import 'package:o_r/store_screen/subscription_plan_screen.dart';
import 'package:o_r/utils/constants/colors.dart';
import '../home_screen/home_screen.dart';
import '../location_screen/location_screen.dart';
import '../report_screen/report_screen.dart';
import '../wearer_screen/wearer_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    LocationScreen(),
    ReportScreen(),
    SubscriptionPlanScreen(),
    WearerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ORColors.primaryColor,
        unselectedItemColor: const Color(0xff888888),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Location",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/report.png',
              height: 24,
              width: 24,
              color: _selectedIndex == 2 ? ORColors.primaryColor : const Color(0xff888888),
            ),
            label: "Report",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/store.png',
              height: 24,
              width: 24,
              color: _selectedIndex == 3 ? ORColors.primaryColor : const Color(0xff888888),
            ),
            label: "Store",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Wearer",
          ),
        ],
      ),
    );
  }
}
