import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key,this.onSave});
  final Function()? onSave;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => print('Register'),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
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
              'Register',
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