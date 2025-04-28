import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class ORAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ORAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.openSans(
          color: ORColors.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
