import 'package:flutter/material.dart';
import 'package:food_project/login/components/back_widget.dart';
import 'package:food_project/veryfi_OTP/components/verification_widget.dart';
import 'package:food_project/veryfi_OTP/components/verify.dart';

class OtpFormScreen extends StatefulWidget {
  const OtpFormScreen({super.key});

  @override
  State<OtpFormScreen> createState() => _OtpFormScreenState();
}

class _OtpFormScreenState extends State<OtpFormScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildBack() {
      return const BackWidget();
    }

    Widget buildPhoneVerification() {
      return const Text(
        'Phone verification',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      );
    }

    Widget buildOTPCode() {
      return const Text(
        'Enter your OTP code',
        style: TextStyle(color: Colors.grey),
      );
    }

    Widget buildVerification() {
      return const VerificationWidget();
    }

    Widget buildVerify() {
      return const VerifyWidget();
    }

    Widget buildEnd() {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Didn’t receive code?'),
          Text(
            ' Resend again',
            style: TextStyle(color: Colors.green),
          )
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          buildBack(),
          const SizedBox(
            height: 30,
          ),
          buildPhoneVerification(),
          buildOTPCode(),
          const SizedBox(
            height: 30,
          ),
          buildVerification(),
          const Spacer(),
          buildVerify(),
          const SizedBox(
            height: 30,
          ),
          buildEnd(),
        ],
      )),
    );
  }
}
