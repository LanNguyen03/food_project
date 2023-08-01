import 'package:flutter/material.dart';

class BookYourCar extends StatefulWidget {
  const BookYourCar({super.key});

  @override
  State<BookYourCar> createState() => _BookYourCarState();
}

class _BookYourCarState extends State<BookYourCar> {
  @override
  Widget build(BuildContext context) {
    Widget buildSkip(){
      return  Container(
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
    Widget buildImage(){
      return Column(
                    children: [Image.asset('assets/three.png')],
                  );
    }
    Widget buildLetterBookYourCar(){
      return Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Book your car',
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
                  buildLetterBookYourCar(),
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
