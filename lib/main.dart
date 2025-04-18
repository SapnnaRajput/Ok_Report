import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:o_r/splash_screen/splash_screen.dart';
import 'package:o_r/utils/constants/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set global system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: ORColors.primaryBackground,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ORColors.primaryColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}