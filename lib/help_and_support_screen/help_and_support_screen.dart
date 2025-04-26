import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(
          "Help & Support",
          style: TextStyle(
            color: ORColors.buttonPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
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
                    Text("AI",style: TextStyle(
                      color: ORColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text("Hi Michael Jones, Welcome to Okreport chat support",style: TextStyle(
                      color: ORColors.darkerGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("12:47 PM",style: TextStyle(
                          color: Color(0xff454545),
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                        ),),
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
                          Text("AI",style: TextStyle(
                            color: ORColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),),
                          Text("Hi Michael Jones, Welcome to Okreport chat support",style: TextStyle(
                            color: ORColors.darkerGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("12:47 PM",style: TextStyle(
                                color: Color(0xff454545),
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text('"Are you facing issues with GPS tracking?"',style: TextStyle(
                      color: Color(0xff2103C6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text('"Do you need help upgrading to a premium plan?"',style: TextStyle(
                      color: Color(0xff2103C6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text('"Are you seeing incorrect location data?"',style: TextStyle(
                      color: Color(0xff2103C6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text('"Are you Facing Payment Related Issues?"',style: TextStyle(
                      color: Color(0xff2103C6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
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
