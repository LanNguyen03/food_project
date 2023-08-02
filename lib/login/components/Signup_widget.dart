import 'package:flutter/material.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key,this.onSave});
    final Function()? onSave;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => print('signup'),
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
              'Sign Up',
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