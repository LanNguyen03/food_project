import 'package:flutter/material.dart';
import 'package:food_project/password/components/Register_widget.dart';
import 'package:food_project/password/components/back_widget.dart';

import 'components/text_form_filed_widget.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Widget buildBack() {
      return BackWidget();
    }

    Widget buildLetterSet() {
      return const Text(
        'Set password',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      );
    }

    Widget buildLetterSetYour() {
      return const Text(
        'Set your password',
        style: TextStyle(color: Colors.grey),
      );
    }

    Widget buildEnterPassword() {
      return TextFormFieldWidget(
        hintText: 'Enter Your Password',
        onTap: () {
          _obscureText = !_obscureText;
          setState(() {});
        },
        obscureText: _obscureText,
      );
    }

    Widget buildConfirmPassword() {
      return TextFormFieldWidget(
        hintText: 'Confirm Password',
        onTap: () {
          _obscureText = !_obscureText;
          setState(() {});
        },
        obscureText: _obscureText,
      );
    }

    Widget buildLetter() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Atleast 1 number or a special character',
              style: TextStyle(color: Colors.grey),
            )),
      );
    }

    Widget buildRegister() {
      return const RegisterWidget();
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          buildBack(),
          const SizedBox(
            height: 20,
          ),
          buildLetterSet(),
          buildLetterSetYour(),
          const SizedBox(
            height: 30,
          ),
          buildEnterPassword(),
          const SizedBox(
            height: 20,
          ),
          buildConfirmPassword(),
          const SizedBox(
            height: 10,
          ),
          buildLetter(),
          const Spacer(),
          buildRegister(),
        ],
      )),
    );
  }
}
