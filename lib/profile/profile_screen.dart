import 'package:flutter/material.dart';
import 'package:food_project/profile/components/components.dart';
import 'package:food_project/profile/components/text_form_filed_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildFullName() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Full Name',
              ),
            ),
          ),
        ),
      );
    }

    Widget buildNumber() {
      return Padding(
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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Your mobile munber',
              ),
            ),
          ),
        ),
      );
    }

    Widget buildEmail() {
      return Padding(
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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Email',
              ),
            ),
          ),
        ),
      );
    }

    Widget buildStreet() {
      return const TextFormFiledWidget(hintText: 'Street');
    }

    Widget buildCity() {
      return const TextFormFiledWidget(hintText: 'City');
    }

    Widget buildDistrict() {
      return Padding(
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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'District',
              ),
            ),
          ),
        ),
      );
    }

    Widget buildSave() {
      return SaveWidget(
        onSave: () {
          print('save');
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
            onTap: () => print('back'),
            child: const Text(
              '< Back',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
      body: SafeArea(
        child: Column(
          children: [
            buildFullName(),
            buildNumber(),
            const SizedBox(
              height: 20,
            ),
            buildEmail(),
            const SizedBox(
              height: 20,
            ),
            buildStreet(),
            const SizedBox(
              height: 20,
            ),
            buildCity(),
            const SizedBox(
              height: 20,
            ),
            buildDistrict(),
            const SizedBox(
              height: 30,
            ),
            buildSave(),
          ],
        ),
      ),
    );
  }
}
