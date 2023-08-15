import 'package:flutter/material.dart';
import 'package:food_project/login/auth_page.dart';
import 'package:food_project/profile/profile_screen.dart';
import 'package:food_project/sendOTP/sendOTP.dart';
import 'package:food_project/password/setPassword.dart';
import 'package:food_project/sign_up/signup.dart';
import 'package:food_project/page/welcome.dart';

import 'page/anytime.dart';
import 'page/bookyourcar.dart';
import 'login/login_screen.dart';
import 'veryfi_OTP/otpform.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
