import 'package:flutter/material.dart';

class SendOtpWidget extends StatelessWidget {
  const SendOtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
}