import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildImage(){
      return Container(
              alignment: Alignment.center,
              child: Image.asset('assets/four.png'),
            );
    }
    Widget buildLetterWelcome(){
      return const Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            );
    }
    Widget buildLetter(){
      return const Text(
              'Have a better sharing experience',
              style: TextStyle(color: Colors.grey),
            );
    }
    Widget buildAccount(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: InkWell(
                onTap: () => print('sigin'),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20,),
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
      );
    }
    Widget buildLogin(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
        child: InkWell(
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
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildImage(),
            const SizedBox(
              height: 25,
            ),
            buildLetterWelcome(),
            const SizedBox(
              height: 25,
            ),
            buildLetter(),
            const Spacer(),
            buildAccount(),
            buildLogin(),
          ],
        ),
      ),
    );
  }
}
