import 'package:flutter/material.dart';

class SendOTPScreen extends StatefulWidget {
  const SendOTPScreen({super.key});

  @override
  State<SendOTPScreen> createState() => _SendOTPScreenState();
}

class _SendOTPScreenState extends State<SendOTPScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildBack() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            onPressed: () => print('Back'),
            child: const Text(
              '< Back',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      );
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
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                )
              ]),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Email or Phone Number',
              ),
            ),
          ),
        ),
      );
    }

    Widget buildSendOTP() {
      return InkWell(
        onTap: () => print('Send OTP'),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 32, 146, 36),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                  )
                ]),
            child: const Text(
              textAlign: TextAlign.center,
              'Send OTP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      );
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
