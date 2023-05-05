import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.hinttext, this.icon});

  String? hinttext;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          decoration: InputDecoration(
              suffixIcon: icon,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23),
                  borderSide: const BorderSide(color: Color(0xff71c6db), width: 2)),
              hintText: hinttext,
              hintStyle: const TextStyle(color: Color(0xff71c6db)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23),
                  borderSide: const BorderSide(color: Color(0xff71c6db), width: 2)))),
    );
  }
}
