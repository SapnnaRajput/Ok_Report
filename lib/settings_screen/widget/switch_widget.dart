import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants/colors.dart';

class SwitchWidget extends StatefulWidget {
  final String title;
  bool isTrue;
  bool? showSwitch;

  SwitchWidget({required this.title,this.showSwitch, required this.isTrue});

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w600, color: ORColors.textPrimary),
          ),
          Switch(
            value: widget.isTrue,
            onChanged: (value) {
              setState(() {
                widget.isTrue = value;
              });
            },
            activeTrackColor: Colors.brown,
            activeColor: Colors.white,
          ),
        ],
      ),
    );
  }
}