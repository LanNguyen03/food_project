import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/four.png'),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Have a better sharing experience',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 300,
            ),
            InkWell(
              onTap: () => print('sigin'),
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
                  'Create an account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () => print('sigin'),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: const Color.fromARGB(255, 32, 146, 36),
                        blurRadius: 1,
                      )
                    ]),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 32, 146, 36),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
