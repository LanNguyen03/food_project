import 'package:flutter/material.dart';

class VerifyWidget extends StatelessWidget {
  const VerifyWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
      );
  }
}