import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key, this.hintText});
  final String? hintText;
  final bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              obscureText: obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText?? '',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                  )),
            ),
          ),
        ),
      );
  }
  
  void setState(Null Function() param0) {}
}

