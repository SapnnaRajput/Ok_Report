import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../card_screen/card_screen.dart';
import 'ai_screen.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  int groupValue = 0; // This should be in your State

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(

              title: Text('Family plan',style: GoogleFonts.openSans(fontSize: 16,fontWeight: FontWeight.w600,color: const Color(0xFF4F4F4F)),),
              subtitle: Text('Valid until 12 March, 2025',style: GoogleFonts.openSans(fontSize: 14,color: const Color(0xFF4F4F4F)),),
              trailing: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\$12.50/month',style: GoogleFonts.openSans(fontSize: 14,color: const Color(0xFF4F4F4F)),),
                  Text(
                    '\$13.50/month',
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Text('UPI Apps',style: GoogleFonts.openSans(fontSize: 16,fontWeight: FontWeight.w600,color: const Color(0xFF4F4F4F)),),
            const SizedBox(height: 16,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF888888).withOpacity(0.2)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0), child: Image.asset('assets/images/upi.png', height: 30, width: 30,),),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Use any UPI App on Phone to Pay', style: GoogleFonts.openSans(fontSize: 12, color: const Color(0xFF4F4F4F), fontWeight: FontWeight.w600,),),
                            Text('Valid until 12 March, 2025', style: GoogleFonts.openSans(fontSize: 8, color: const Color(0xFF888888),),
                            ),
                          ],
                        ),
                      ),
                      Radio<int>(
                        value: 1,
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value!;
                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xFF4F4F4F); // Selected color (active)
                          }
                          return Colors.black38.withOpacity(0.4); // Unselected color (default)
                        }),
                      )
                    ],
                  ),
                  Divider(
                    color: const Color(0xFF888888).withOpacity(0.2),
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 0,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/amazon_pay .png',height: 30),
                            const SizedBox(height: 5,),
                            Text('Amazon Pay',style: GoogleFonts.openSans(fontSize: 10,color: const Color(0xFF4F4F4F),fontWeight: FontWeight.w600),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/paypal.png',height: 30,width: 50,),
                            const SizedBox(height: 5,),
                            Text('Paypal',style: GoogleFonts.openSans(fontSize: 10,color: const Color(0xFF4F4F4F),fontWeight: FontWeight.w600),),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/cash_app.png',height: 30,width: 50,),
                            const SizedBox(height: 5,),
                            Text('Cash App',style: GoogleFonts.openSans(fontSize: 10,color: const Color(0xFF4F4F4F),fontWeight: FontWeight.w600),),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/googlepay.png',height: 30,width: 50,),
                            const SizedBox(height: 5,),
                            Text('Google Pay',style: GoogleFonts.openSans(fontSize: 10,color: const Color(0xFF4F4F4F),fontWeight: FontWeight.w600),),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/venmo.png',height: 30,width: 50,),
                            const SizedBox(height: 5,),
                            Text('Venmo',style: GoogleFonts.openSans(fontSize: 10,color: const Color(0xFF4F4F4F),fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Text('Card Payment',style: GoogleFonts.openSans(fontSize: 16,fontWeight: FontWeight.w600,color: const Color(0xFF4F4F4F)),),
            const SizedBox(height: 16,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF888888).withOpacity(0.2)),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0,right: 15.0,top: 0,bottom: 0),
                leading: Image.asset('assets/images/caredit_debit_card.png',height: 40),
                title: Text('Credit/ Debit Card',style: GoogleFonts.openSans(fontSize: 14,color: const Color(0xFF252525),fontWeight: FontWeight.bold),),
                trailing: Image.asset('assets/images/arrowRight.png',height: 50),
              ),
            ),
            const SizedBox(height: 30,),
            Text('Net Banking',style: GoogleFonts.openSans(fontSize: 16,fontWeight: FontWeight.w600,color: const Color(0xFF4F4F4F)),),
            const SizedBox(height: 16,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF888888).withOpacity(0.2)),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddCardScreen()));
                },
                contentPadding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 0,bottom: 0),
                leading: Image.asset('assets/images/worldbank.png',height: 50),
                title: Text('Net Banking',style: GoogleFonts.openSans(fontSize: 14,color: const Color(0xFF252525),fontWeight: FontWeight.bold),),
                trailing: Image.asset('assets/images/arrowRight.png',height: 50),
              ),
            ),
            const SizedBox(height: 50,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AiScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/shieldCheck.png',height: 60),
                  Text('100% safe \n& Secure payment',style: GoogleFonts.openSans(fontSize: 16,color: const Color(0xFF888888),fontWeight: FontWeight.bold),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
