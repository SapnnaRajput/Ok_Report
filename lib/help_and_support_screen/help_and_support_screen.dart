import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../utils/common_widgets/or_text_widget.dart';
import '../utils/constants/colors.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SupportScreen(),
    );
  }
}

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "Help & Support"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Color(0xffE5E6FF),
              shadowColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ORTextWidget(
                      text: "AI",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ORColors.primaryColor,
                    ),
                    ORTextWidget(
                      text: "Hi Michael Jones, Welcome to Okreport chat support",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ORColors.darkerGrey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ORTextWidget(
                          text: "12:47 PM",
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff454545),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(0, 1.5),
                    blurRadius: 0.0,
                    spreadRadius: 0.1,
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffE5E6FF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ORTextWidget(
                            text: "AI",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ORColors.primaryColor,
                          ),
                          ORTextWidget(
                            text: "Hi Michael Jones, Welcome to Okreport chat support",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ORColors.darkerGrey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ORTextWidget(
                                text: "12:47 PM",
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff454545),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ORTextWidget(
                      text: '"Are you facing issues with GPS tracking?"',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ORColors.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ORTextWidget(
                      text: '"Do you need help upgrading to a premium plan?"',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ORColors.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ORTextWidget(
                      text: '"Are you seeing incorrect location data?"',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ORColors.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ORTextWidget(
                      text: '"Are you Facing Payment Related Issues?"',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ORColors.primaryColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
