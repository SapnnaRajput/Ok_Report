import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyScreenTwo extends StatelessWidget {
  const EmergencyScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20,),
            Image.asset('assets/images/warning.png'),
            SizedBox(height: 20,),
            Text(
              '"Possible Fall Detected! No movement for 3 minutes." Calling emergency number',
              style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50,),
            Text(
              '30 Sec',
              style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF991C1B)
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Searching your location....',
              style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 30,),
            Image.asset('assets/images/google_map.png'),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        side: BorderSide(color: Colors.grey), // Add border color here
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/greenTick.png', height: 20,),
                          SizedBox(width: 10,),
                          Text('I am okay', style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),)),
    );
  }
}
