import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            onPressed: () => print('Back'),
            child: const Text(
              '< Back',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      );
  }
}