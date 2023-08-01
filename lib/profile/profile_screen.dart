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
      return const TextFormFiledWidget(hintText: 'Full Name');
    }

    Widget buildNumber() {
      return const TextFormFiledWidget(hintText: 'Your mobile munber');
    }

    Widget buildEmail() {
      return const TextFormFiledWidget(hintText: 'Email');
    }

    Widget buildStreet() {
      return const TextFormFiledWidget(hintText: 'Street');
    }

    Widget buildCity() {
      return const TextFormFiledWidget(hintText: 'City');
    }

    Widget buildDistrict() {
      return const TextFormFiledWidget(hintText: 'District');
    }

    Widget buildSave() {
      return SaveWidget(
        onSave: () {
          print('Save');
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
            buildEmail(),
            buildStreet(),
            buildCity(),
            buildDistrict(),
            buildSave(),
          ],
        ),
      ),
    );
  }
}
