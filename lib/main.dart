import 'package:flutter/material.dart';
import 'package:food_project/profile/profile_screen.dart';
import 'package:food_project/veryfi_OTP/sendOTP.dart';
import 'package:food_project/password/setPassword.dart';
import 'package:food_project/sign_up/signup.dart';
import 'package:food_project/page/welcome.dart';

import 'page/anytime.dart';
import 'page/bookyourcar.dart';
import 'login/login.dart';
import 'veryfi_OTP/otpform.dart';

void main() {
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
      home: const otpform(),
    );
  }
}
