import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ORTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;

  const ORTextWidget({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: GoogleFonts.openSans(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
      ),
    );
  }
}
