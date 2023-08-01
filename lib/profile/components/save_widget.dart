import 'package:flutter/material.dart';

class SaveWidget extends StatelessWidget {
  const SaveWidget({super.key,this.onSave});
  final Function()? onSave;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => print('Cancel'),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 32, 146, 36),
                    blurRadius: 1,
                  )
                ]),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Color.fromARGB(255, 32, 146, 36),
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () => onSave!(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
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
      ],
    );
  }
}
