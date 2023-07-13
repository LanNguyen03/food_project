import 'package:flutter/material.dart';

class advertisement extends StatefulWidget {
  const advertisement({super.key});

  @override
  State<advertisement> createState() => _advertisementState();
}

class _advertisementState extends State<advertisement> {
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
                      child: const Text(
                        'skip',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [Image.asset('assets/one.png')],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Anywhere you are',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const Text('Sell houses easily with the help of'),
                  const Text('Listenoryx and to make this line big'),
                  const Text('I am writing more.'),


                const SizedBox(
                  height: 200,
                ),

                const Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                    value: 0.35,
                    
                  ),
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
