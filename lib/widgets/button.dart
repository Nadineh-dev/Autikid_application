import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.buttonText});

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: const Color(0xff71c6db), borderRadius: BorderRadius.circular(23)),
        width: double.infinity,
        height: 50,
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )),
      ),
    );
  }
}
