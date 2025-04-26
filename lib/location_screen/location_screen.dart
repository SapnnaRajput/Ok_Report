import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool isLoading = false;
//---

  initState() {
    super.initState();
    _fetchLocationAndNavigate();
  }

  Future<void> _fetchLocationAndNavigate() async {
    // Simulate location fetch
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: Text(
                "Locating John Doe.....",
                style: TextStyle(
                  color: ORColors.buttonPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
                child: Column(
                  children: [
                    Image.asset('assets/images/google_map.png'),
                    const SizedBox(
                      height: 16,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Location Details",
                        style: TextStyle(
                          fontSize: 16,
                          color: ORColors.buttonPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          ListTile(
                              leading: const Icon(
                                Icons.location_on,
                                color: Color(0xFF2103C6),
                              ),
                              title: const Text(
                                "John Doe",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              subtitle: const Text(
                                "George’s Restro & Bar",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: ORColors.buttonPrimary,
                                ),
                              ),
                              trailing: SizedBox(
                                width: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 10.0,
                                      height: 10.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const Text(
                                      "Live",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF2103C6),
                              border: Border.all(
                                color: ORColors.buttonPrimary,
                              ),
                              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                            ),
                            height: 40,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.my_location,
                                  color: Color(0xFFFFFFFF),
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Navigate to home",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Card(
                      color: const Color(0xFFEAFFE0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          ListTile(
                              leading: Image.asset('assets/images/Shield.png'),
                              title: const Text(
                                "John Doe",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              subtitle: const Text(
                                "Within the Geo-fencing Limits",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF888888),
                                ),
                              ),
                              trailing: SizedBox(
                                width: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 10.0,
                                      height: 10.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const Text(
                                      "Safe",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                            ),
                            height: 40,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "View Geo-fencing Limits",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF2103C6),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
