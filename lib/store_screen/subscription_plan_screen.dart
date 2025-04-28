import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o_r/utils/common_widgets/app_bar_widget.dart';

import '../utils/common_widgets/or_text_widget.dart';
import '../utils/constants/colors.dart';

class SubscriptionPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ORAppBar(title: "Subscription Plans"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ORTextWidget(
                    text: 'Current plan',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ORColors.textSubtitle,
                  ),
                  ORTextWidget(
                    text: 'Per Month',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ORColors.textSubtitle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ORTextWidget(
                    text: 'Premium plan',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ORColors.textSubtitle,
                  ),
                  ORTextWidget(
                    text: '\$7.99/month',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ORColors.textSubtitle,
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      width: 0.5,
                      color: Colors.black.withOpacity(0.3)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 1.5),
                      blurRadius: 1,
                      spreadRadius: 1.5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ORTextWidget(
                                  text: 'Basic Plan',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ORColors.textPrimary,
                                ),
                                const SizedBox(height: 8),
                                ORTextWidget(
                                  text: 'Perfect for individual users',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff454545),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$2",
                                style: GoogleFonts.openSans(
                                  color: ORColors.textPrimary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "/month",
                                style: GoogleFonts.openSans(
                                    color: Color(0xff454545),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      // Features List
                      featureItem("Single wearer tracking"),
                      featureItem("24 - hour history"),
                      featureItem("Basic Alerts"),
                      const SizedBox(height: 20),
                      // Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ORColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            "Select Basic",
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      width: 0.5,
                      color: Colors.black.withOpacity(0.3)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 1.5),
                      blurRadius: 1,
                      spreadRadius: 1.5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ORTextWidget(
                                      text: 'Family plan',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: ORColors.textPrimary,
                                    ),
                                    const SizedBox(width: 6),
                                    ORTextWidget(
                                      text: '(Popular)',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: ORColors.primaryColor,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                ORTextWidget(
                                  text: 'Unlimited Protection for families',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff454545),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$12.50",
                                style: GoogleFonts.openSans(
                                  color: ORColors.textPrimary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "/month",
                                style: GoogleFonts.openSans(
                                    color: Color(0xff454545),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      // Features List
                      featureItem("Unlimited Wearers"),
                      featureItem("Family dashboard"),
                      featureItem("Multi-device access"),
                      featureItem("Emergency route assistance"),
                      const SizedBox(height: 20),
                      // Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ORColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            "Select Family",
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ORTextWidget(
                text: "Add On's",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ORColors.textPrimary,
              ),

              SizedBox(height: 5),

              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return AddOnList(
                      title: "Additional Wearer",
                      oldPrice: "\$6.99",
                      newPrice: "\$4.99",
                    );
                  },),
              ),
              SizedBox(height: 20),
              Divider(color: ORColors.primaryColor, thickness: 0.5),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Left side: Prices
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$12.50/month",
                          style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "\$13.50/month",
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(height: 4),
                        ORTextWidget(
                          text: 'Amount to pay',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ORColors.darkerGrey,
                        ),
                      ],
                    ),

                    // Right side: Upgrade Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ORColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              "Upgrade",
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: ORColors.primaryColor, thickness: 0.5),

            ],
          ),
        ),
      ),
    );
  }

  Widget featureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.done, color: Colors.green, size: 20),
          const SizedBox(width: 8),
          Text(
            text,
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff454545),
            ),
          ),
        ],
      ),
    );
  }
}

class AddOnList extends StatefulWidget {
  final String title;
  final String oldPrice;
  final String newPrice;

  const AddOnList({
    Key? key,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
  }) : super(key: key);

  @override
  State<AddOnList> createState() => _AddOnListState();
}

class _AddOnListState extends State<AddOnList> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Card(
          color: isSelected
              ? ORColors.primaryColor.withOpacity(0.2)
              : const Color(0xFFEFEFFF),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: isSelected ? ORColors.primaryColor : ORColors
                  .textSecondary,
              width: isSelected ? 1.5 : 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ORColors.textPrimary,
                  ),
                ),
                // const SizedBox(height: 6),
                Text(
                  widget.oldPrice,
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
                // const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.newPrice,
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: ORColors.darkerGrey,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "(33% off)",
                      style: GoogleFonts.openSans(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: ORColors.darkerGrey,
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 8),
                Text(
                  "Per Month",
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ORColors.darkerGrey,
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
