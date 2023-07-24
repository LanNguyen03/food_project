import 'package:flutter/material.dart';

class sendOTP extends StatefulWidget {
  const sendOTP({super.key});

  @override
  State<sendOTP> createState() => _sendOTPState();
}

class _sendOTPState extends State<sendOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              onPressed: () => print('Back'),
              child: const Text(
                '< Back',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Verifivation email or phone',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                'munber',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
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
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '    Email or Phone Number',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          InkWell(
            onTap: () => print('Send OTP'),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.bottomCenter,
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
                  'Send OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );;
  }
}