import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:o_r/auth/signup/signup_screen/signup_screen.dart';
import 'package:o_r/connect_to_chip_screen/connect_to_chip_screen.dart';

import '../../utils/common_widgets/or_text_widget.dart';
import '../../utils/constants/colors.dart';

class LoginWithPhoneTab extends StatefulWidget {
  @override
  State<LoginWithPhoneTab> createState() => _LoginWithPhoneTabState();
}

class _LoginWithPhoneTabState extends State<LoginWithPhoneTab> {
  bool isChecked = false;
  bool _obscureText = true;
  String countryCode = '+1';
  bool isPhoneNumberValid = false;
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  final mobileTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ORTextWidget(
            text: "Phone",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: ORColors.textPrimary,
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Your Number",
              hintStyle: GoogleFonts.openSans(
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
              prefixIcon: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  setState(() {
                    countryCode = number.dialCode ?? '+1';
                  });
                },
                onInputValidated: (bool value) {
                  setState(() {
                    isPhoneNumberValid = value;
                  });
                  print(value ? 'Valid' : 'Invalid');
                },
                selectorConfig: SelectorConfig(
                  leadingPadding: width * 0.04,
                  trailingSpace: false,
                  setSelectorButtonAsPrefixIcon: true,
                  selectorType: PhoneInputSelectorType.DIALOG,
                  useEmoji: false,
                ),
                selectorTextStyle: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w500,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                initialValue: number,
                textFieldController: mobileTextEditController,
                formatInput: false,
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                inputBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
                onSaved: (PhoneNumber number) {
                  String formattedNumber =
                      number.phoneNumber?.replaceFirst('+', '') ?? '';
                  print('On Saved: $formattedNumber');
                },
                cursorColor: Colors.black,
                textStyle: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                inputDecoration: InputDecoration(
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(
                      color: ORColors.textSecondary,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  errorMaxLines: 3,
                  counterText: "",
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
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
                color: ORColors.textSecondary,
              ),
              hintText: "Enter Password",
              hintStyle: GoogleFonts.openSans(
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
                child: ORTextWidget(
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
                child: ORTextWidget(
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
                        color: ORColors.textPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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
                        color: ORColors.textPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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
