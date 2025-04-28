import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../connect_to_chip_screen/connect_to_chip_screen.dart';
import '../../utils/common_widgets/or_text_widget.dart';
import '../../utils/constants/colors.dart';
import '../signup/signup_screen/signup_screen.dart';

class LoginWithEmailTab extends StatefulWidget {
  @override
  State<LoginWithEmailTab> createState() => _LoginWithEmailTabState();
}

class _LoginWithEmailTabState extends State<LoginWithEmailTab> {
  bool isChecked = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ORTextWidget(
            text: "Email",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: ORColors.textPrimary,
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Email",
              hintStyle: TextStyle(
                  color: ORColors.textSecondary,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              filled: true,
              fillColor: ORColors.textInputFieldColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5),
                  // Full opacity when focused
                  width: 1,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          ORTextWidget(
            text: "Password",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: ORColors.textPrimary,
          ),
          SizedBox(height: 8),
          TextFormField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                color: ORColors.textSecondary,
              ),
              hintText: "Enter Password",
              hintStyle: TextStyle(
                  color: ORColors.textSecondary,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              filled: true,
              fillColor: ORColors.textInputFieldColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5),
                  // Full opacity when focused
                  width: 1,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Transform.scale(
                    scale: 1.1,
                    child: Checkbox(
                      side: BorderSide(
                        color: Colors.grey.shade800,
                        width: 1,
                      ),
                      activeColor: ORColors.buttonPrimary,
                      value: isChecked,
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                  ),
                  // const SizedBox(width: 4),
                  ORTextWidget(
                    text: "Remember me",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ORColors.textPrimary,
                  ),
                ],
              ),
              ORTextWidget(
                text: "Forgot Password?",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ORColors.textPrimary,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.offAll(()=> ConnectToChipScreen()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ORColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child:
                ORTextWidget(
                  text: "Login",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: ORColors.white,
                ),
              )),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: ORColors.textSecondary,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:
                ORTextWidget(
                  text: "Sign in with Google or Facebook",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ORColors.textSecondary,
                ),
              ),
              Expanded(
                child: Divider(
                  color: ORColors.textSecondary,
                  thickness: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/google-icon.png",
                      height: 30,
                    ),
                    SizedBox(width: 5),
                    ORTextWidget(
                      text: "Google",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ORColors.textPrimary,
                    ),
                  ],
                )),
              ),
              Flexible(
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/facebook-icon.png",
                      height: 30,
                    ),
                    SizedBox(width: 5),
                    ORTextWidget(
                      text: "Facebook",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ORColors.textPrimary,
                    ),
                  ],
                )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: "Don’t have an account? ",
                  style: GoogleFonts.openSans(
                      color: ORColors.textSecondary,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                      text: "Sign up",
                      style: GoogleFonts.openSans(
                          color: Color(0xff2103C6),
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => SignUpScreen())),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
