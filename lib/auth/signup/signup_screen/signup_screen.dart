import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:o_r/auth/login_screen/login_screen.dart';

import '../../../utils/constants/colors.dart';

class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  PhoneNumber? _phoneNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadInitialPhoneNumber();

  }

  void _loadInitialPhoneNumber() async {
    try {
      PhoneNumber number =
      await PhoneNumber.getRegionInfoFromPhoneNumber('+14155552671');
      setState(() {
        _phoneNumber = number;
      });
    } catch (e) {
      debugPrint("Error loading phone number: $e");
    }
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  void _showGenderDropdown(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return ListView(
          children: ['Male', 'Female', 'Other'].map((gender) {
            return ListTile(
              title: Text(gender),
              onTap: () {
                genderController.text = gender;
                Navigator.pop(context);
              },
            );
          }).toList(),
        );
      },
    );
  }


  // Convert ISO country code to emoji flag
  String _getFlagEmoji(String? countryCode) {
    if (countryCode == null) return '';
    return countryCode
        .toUpperCase()
        .codeUnits
        .map((e) => String.fromCharCode(e + 127397))
        .join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              ListTile(
                title: const Text(
                  "Account Regiatration",
                  style: TextStyle(
                    color: ORColors.buttonPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  "Hello, Create your Account!",
                  style: TextStyle(
                    color: ORColors.textSecondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: _phoneNumber == null
                    ? const CircularProgressIndicator()
                    : CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Text(
                    _getFlagEmoji(_phoneNumber!.isoCode),
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
          
              const SizedBox(height: 20),
          
              const Text(
                "Enter Your Full Name",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
          
              const TextInputField(
                hintText: "Your Full Name",
              ),
          
              const SizedBox(height: 15),
          
              const Text(
                "Enter City",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              TextInputField(
                hintText: "Chicago",
                isDropdown: true,
                onTap: () => _showGenderDropdown(context),
              ),

              const SizedBox(height: 15),

              const Text(
                "Enter Zip Code",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),

              const TextInputField(
                hintText: "Zip Code",
              ),

              const SizedBox(height: 15),

              const Text(
                "Enter Your Height",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),

              const TextInputField(
                hintText: "Height",
              ),

              const SizedBox(height: 15),

              const Text(
                "Enter Your Weight",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),

              const TextInputField(
                hintText: "Weight",
              ),

              const SizedBox(height: 15),

              const Text(
                "Enter Your Password",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),

              const TextInputField(
                hintText: "Your Password",
              ),

              const SizedBox(height: 15),

              const Text(
                "Confirm Your Password",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),

              const TextInputField(
                hintText: "Your Password",
              ),

              const SizedBox(height: 15),
              const Text(
                "Select User Type",
                style: TextStyle(
                  color: ORColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              TextInputField(
                hintText: "Chicago",
                isDropdown: true,
                onTap: () => _showGenderDropdown(context),
              ),

              const SizedBox(height: 25),

              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: ORColors.textSecondary,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Sign in with Google or Facebook",
                      style: TextStyle(
                        color: ORColors.textSecondary,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
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
              const SizedBox(height: 10),
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
                            const SizedBox(width: 5),
                            const Text(
                              "Google",
                              style: TextStyle(
                                color: ORColors.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
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
                            const SizedBox(width: 5),
                            const Text(
                              "Facebook",
                              style: TextStyle(
                                color: ORColors.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Have an account? ",
                      style: const TextStyle(
                          color: ORColors.textSecondary,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                            text: "Login",
                            style: const TextStyle(
                                color: Color(0xff2103C6),
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const LoginScreen())),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              SizedBox(
                  height: 50,
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ORColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: ORColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool isDropdown;
  final List<String>? dropdownItems;
  final VoidCallback? onTap;

  const TextInputField({
    Key? key,
    this.hintText,
    this.controller,
    this.isDropdown = false,
    this.dropdownItems,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: isDropdown,
      onTap: isDropdown ? onTap : null,
      decoration: InputDecoration(
        hintText: hintText ?? '',
        hintStyle: const TextStyle(
          color: ORColors.textSecondary,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        filled: true,
        fillColor: ORColors.textInputFieldColor,
        suffixIcon: isDropdown
            ? const Icon(Icons.arrow_drop_down, color: ORColors.textSecondary)
            : null,
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
            width: 1,
          ),
        ),
      ),
    );
  }
}
