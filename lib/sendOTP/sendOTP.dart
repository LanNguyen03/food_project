import 'package:flutter/material.dart';
import 'package:food_project/login/components/back_widget.dart';
import 'package:food_project/password/components/text_form_filed_widget.dart';
import 'package:food_project/sendOTP/components/send_otp_widget.dart';

class SendOTPScreen extends StatefulWidget {
  const SendOTPScreen({super.key});

  @override
  State<SendOTPScreen> createState() => _SendOTPScreenState();
}

class _SendOTPScreenState extends State<SendOTPScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildBack() {
      return const BackWidget();
    }

    Widget buildTitle() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: const Text(
            textAlign: TextAlign.center,
            'Verifivation email or phone number',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
        ),
      );
    }

    Widget buildFormField() {
      return const TextFormFieldWidget(hintText: 'Email or Phone Number');
    }

    Widget buildSendOTP() {
      return const SendOtpWidget();
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildBack(),
          buildTitle(),
          buildFormField(),
          const Spacer(),
          buildSendOTP(),
        ],
      )),
    );
    ;
  }
}
