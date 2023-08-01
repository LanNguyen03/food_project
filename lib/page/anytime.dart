import 'package:flutter/material.dart';

class AnytimeScreen extends StatefulWidget {
  const AnytimeScreen({super.key});

  @override
  State<AnytimeScreen> createState() => _AnytimeScreenState();
}

class _AnytimeScreenState extends State<AnytimeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildSkip() {
      return Container(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(
          onPressed: () => print("click skip"),
          child: const Text(
            'skip',
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    }

    Widget buildImage() {
      return Column(
        children: [Image.asset('assets/two.png')],
      );
    }

    Widget buildLetterAnyTime() {
      return Container(
        alignment: Alignment.center,
        child: const Text(
          'At anytime',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  buildSkip(),
                  const SizedBox(
                    height: 30,
                  ),
                  buildImage(),
                  const SizedBox(
                    height: 30,
                  ),
                  buildLetterAnyTime(),
                  const Text('Sell houses easily with the help of'),
                  const Text('Listenoryx and to make this line big'),
                  const Text('I am writing more.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
