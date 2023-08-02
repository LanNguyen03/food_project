import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class VerificationWidget extends StatelessWidget {
  const VerificationWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Form(
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
      ));
  }
}