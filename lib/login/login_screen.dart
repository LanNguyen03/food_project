import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_project/login/components/signup_social.dart';
import 'package:food_project/password/components/back_widget.dart';

import '../profile/components/text_form_filed_widget.dart';
import 'components/Signup_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String dropdownValue = 'Nam';
  @override
  Widget build(BuildContext context) {
    Widget buildBack() {
      return const BackWidget();
    }

    Widget buildlletter() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: const Text(
            'Sign up with your email or phone munber',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
        ),
      );
    }

    Widget buildName() {
      return const TextFormFiledWidget(hintText: 'Name');
    }

    Widget buildEmail() {
      return const TextFormFiledWidget(hintText: 'Email');
    }

    Widget buildNumber() {
      return const TextFormFiledWidget(hintText: 'Your mobile number');
    }

    Widget buildGender() {
      return const TextFormFiledWidget(hintText: 'Gender');
    }

    Widget buildDropDown() {
      return Center(
        child: DropdownButton(
          value: dropdownValue,
          icon: const Icon(Icons.menu),
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.black,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: const [
            DropdownMenuItem(
              value: 'Nam',
              child: Text('Nam'),
            ),
            DropdownMenuItem(
              value: 'NU',
              child: Text('NU'),
            ),
          ],
        ),
      );
    }

    Widget buildTick() {
      return const Flexible(
        child:  Row(
          children: [
            Icon(Icons.check),
            Text(
              ' By signing up. you agree to the',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              ' Terms of service',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Text(
              ' and',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              ' Privacy policy.',
              style: TextStyle(
                color: Colors.green,
              ),
            )
          ],
        ),
      );
    }

    Widget buildSignup() {
      return const SignupWidget();
    }

    Widget buildGmail() {
      return const SignUpSocial(
        image: "assets/gmail.svg",
        content: 'Sign up with Gmail',
      );
    }
    Widget buildFacebook() {
      return const SignUpSocial(
        image: "assets/Facebook.svg",
        content: 'Sign up with Facebook',
      );
    }

    Widget buildApple() {
      return const SignUpSocial(
        image: "assets/Apple.svg",
        content: 'Sign up with Apple',
      );
    }

    Widget buildEnd() {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have an account?'),
          Text(
            ' Sign in',
            style: TextStyle(color: Colors.green),
          )
        ],
      );
    }

    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildBack(),
          const SizedBox(
            height: 30,
          ),
          buildlletter(),
          const SizedBox(
            height: 30,
          ),
          buildName(),
          buildEmail(),
          buildNumber(),
          buildGender(),
          buildDropDown(),
          const SizedBox(
            height: 20,
          ),
          buildTick(),
          const SizedBox(
            height: 30,
          ),
          buildSignup(),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              '-------------------------or-------------------------',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          buildGmail(),
          const SizedBox(
            height: 20,
          ),
          buildFacebook(),
          const SizedBox(
            height: 20,
          ),
          buildApple(),
          const SizedBox(
            height: 20,
          ),
          buildEnd(),
        ],
      ),
    );
  }
}
