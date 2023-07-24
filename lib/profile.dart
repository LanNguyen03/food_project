import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => print('back'),
                  child: const Text(
                    '< Back',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '    Full Name',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '    Your mobile number',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '    Email',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '    Street',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '    City',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '    District',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: InkWell(
                    onTap: () => print('Cancel'),
                    child: Container(
                      padding: const EdgeInsets.all(20),
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
                        'Cancel',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 32, 146, 36),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: InkWell(
                    onTap: () => print('Save'),
                    child: Container(
                      padding: const EdgeInsets.all(20),
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
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}