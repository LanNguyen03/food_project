import 'package:flutter/material.dart';

class bookyourcar extends StatefulWidget {
  const bookyourcar({super.key});

  @override
  State<bookyourcar> createState() => _bookyourcarState();
}

class _bookyourcarState extends State<bookyourcar> {
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
                    children: [Image.asset('assets/three.png')],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Book your car',
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
