import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:o_r/auth/controller/controller.dart';
import 'package:o_r/auth/login_screen/login_with_email_tab.dart';
import 'package:o_r/auth/login_screen/login_with_phone_tab.dart';
import 'package:o_r/utils/constants/colors.dart';

import '../../utils/common_widgets/or_text_widget.dart';
import '../../utils/constants/text_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  PhoneNumber? _phoneNumber;
  final MyLoginController myTabController = Get.put(MyLoginController());

  @override
  void initState() {
    super.initState();
    _loadInitialPhoneNumber();
    myTabController.initTabController(this);
  }

  @override
  void dispose() {
    super.dispose();
    myTabController.onClose();
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
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                ListTile(
                  title: ORTextWidget(
                    text: "Login Account",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ORColors.primaryColor,
                  ),
                  subtitle: ORTextWidget(
                    text: "Hello, Welcome back to account!",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ORColors.textSecondary,
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
                const SizedBox(height: 30),
                Center(child: Image.asset("assets/images/avatar.png")),
                const SizedBox(height: 25),

                // TabBar
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: ORColors.textInputFieldColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: TabBar(
                      controller: myTabController.tabController,
                      labelColor: Colors.black,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: const [
                        Tab(text: "Email"),
                        Tab(text: "Phone number"),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // TabBarView wrapped safely
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: TabBarView(
                    controller: myTabController.tabController,
                    children: [
                      LoginWithEmailTab(),
                      LoginWithPhoneTab(),
                    ],
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
