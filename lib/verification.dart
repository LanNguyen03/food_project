import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          SizedBox(
            height: 68,
            width: 64,
            child: TextField(
              style: Theme.of(context).textTheme.headlineLarge,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
              ],
            ),
          )
        ],
      ),
    );
  }
}