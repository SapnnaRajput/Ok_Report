import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_controller/cardController_screen.dart';
import '../utils/constants/colors.dart';

class AddCardScreen extends StatelessWidget {
   AddCardScreen({super.key});

  dynamic controller = Get.put(CardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red),
                      ),
                      TextSpan(
                        text: 'Car Number',
                        style: GoogleFonts.openSans(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const TextField( // Removed Expanded here
                  decoration: InputDecoration(
                    labelText: 'Enter Card Number',
                    labelStyle: TextStyle(color: Colors.grey,fontSize: 14),
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded( // Wrap first Column in Expanded
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: '*',
                                  style: TextStyle(color: Colors.red),
                                ),
                                TextSpan(
                                  text: 'Valid Thru',
                                  style: GoogleFonts.openSans(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'MM/YY',
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 14),
                              border: UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16), // Added spacing
                    Expanded( // Wrap second Column in Expanded
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: '*',
                                  style: TextStyle(color: Colors.red),
                                ),
                                TextSpan(
                                  text: 'CVV',
                                  style: GoogleFonts.openSans(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Security Code',
                              labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                              border: UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                // Add this widget just above the ElevatedButton
                Obx(() => IconButton(
                  onPressed: controller.toggleSaveCard,
                  icon: Row(
                    children: [
                      controller.saveCard.value
                          ? const Icon(Icons.check_circle,
                          color: ORColors.primaryColor,
                          size: 25)
                          : const Icon(Icons.check_box_outline_blank,
                          color: ORColors.primaryColor,
                          size: 25),
                      const SizedBox(width: 10),
                      Text(
                        'Save card info for future use',
                        style: GoogleFonts.openSans(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )),

                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: double.infinity, // Use full width
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ORColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text("Add Card", style: TextStyle(
                        color: ORColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
