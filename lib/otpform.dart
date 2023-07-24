import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class otpform extends StatefulWidget {
  const otpform({super.key});

  @override
  State<otpform> createState() => _otpformState();
}

class _otpformState extends State<otpform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
          const Text(
            'Phone verification',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Enter your OTP code',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              
            ],
          )),
          const SizedBox(
            height: 200,
          ),
          InkWell(
            onTap: () => print('Verify'),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                 padding: const EdgeInsets.symmetric(vertical: 15),
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
                  'Verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Didn’t receive code?'),
              Text(' Resend again',
              style: TextStyle(
                color: Colors.green
              ),)
            ],
          )
        ],
      )),
    );
  }
}
