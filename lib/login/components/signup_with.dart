import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupWith extends StatelessWidget {
  const SignupWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: InkWell(
          onTap: () => print('Sign up with Gmail'),
          child: Column(
            children: [
              SvgPicture.asset("assets/gmail.svg"),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                      )
                    ]),
                child: const Text(
                  'Sign up with Gmail',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}