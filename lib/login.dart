import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String dropdownValue = 'Nam';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              onPressed: () => print('Back'),
              child: const Text(
                '< Back',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Sign up with your email or',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                'phone munber',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
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
                  hintText: '    Name',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
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
            height: 30,
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
            height: 30,
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
                  hintText: '    Gender',
                ),
              ),
            ),
          ),
          Center(
            child: DropdownButton(
              value: dropdownValue,
              icon:  const Icon(Icons.menu),
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;  
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 'Nam',
                  child: Text('Nam'),
                ),
                DropdownMenuItem(
                  value: 'NU',
                  child: Text('NU'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: const Row(
              children: [
                Icon(Icons.check),
                Text(
                  ' By signing up. you agree to the',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' Terms of service',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Text(
                  ' and',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' Privacy policy.',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => print('signup'),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '--------------------------------------------------------or---------------------------------------------------------',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => print('Sign up with Gmail'),
            child: Column(
              children: [
                SvgPicture.asset("assets/gmail.svg"),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                        )
                      ]
                      ),
                  child: const Text(
                    'Sign up with Gmail',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => print('Sign up with Facebook'),
            child: Column(
              children: [
                SvgPicture.asset("assets/Facebook.svg"),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                        )
                      ]
                      ),
                  child: const Text(
                    'Sign up with Facebook',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => print('Sign up with Apple'),
            child: Column(
              children: [
                SvgPicture.asset("assets/Apple.svg"),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                        )
                      ]
                      ),
                  child: const Text(
                    'Sign up with Apple',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?'),
              Text(' Sign in',
              style: TextStyle(
                color: Colors.green
              ),
              )
            ],
          )
        ],
      )),
    );
  }
}
