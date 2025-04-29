import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/colors.dart';

class UserInfoCard extends StatelessWidget {
  final String name;
  final String battery;
  final String alcoholLimit;
  final String location;
  final String imagePath;
  final VoidCallback onPressed; // Added callback

  const UserInfoCard({
    super.key,
    required this.name,
    required this.battery,
    required this.alcoholLimit,
    required this.location,
    required this.imagePath,
    required this.onPressed, // Required parameter
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 0.5),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              // User details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ORColors.textPrimary
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Battery : $battery",
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ORColors.textSubtitle,
                      ),
                    ),
                    Text(
                      "Alcohol Limit :  $alcoholLimit",
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ORColors.textSubtitle,
                      ),
                    ),
                    Text(
                      "Location : $location",
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ORColors.textSubtitle,
                      ),
                    ),
                  ],
                ),
              ),
              // View Button
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ORColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text(
                  "View",
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 0.5),

      ],
    );
  }
}

