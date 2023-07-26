import 'package:flutter/material.dart';

class anytime extends StatefulWidget {
  const anytime({super.key});

  @override
  State<anytime> createState() => _anytimeState();
}

class _anytimeState extends State<anytime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () => print("click skip"),
                      child: Text(
                        'skip',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [Image.asset('assets/two.png')],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'At anytime',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Text('Sell houses easily with the help of'),
                  Text('Listenoryx and to make this line big'),
                  Text('I am writing more.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
