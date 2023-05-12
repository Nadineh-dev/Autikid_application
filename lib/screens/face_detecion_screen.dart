import 'package:flutter/material.dart';
import 'package:project2/constants/colors.dart';

class FaceDetectionScreen extends StatelessWidget {
  const FaceDetectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          "assets/images/Screenshot 2023-03-20 025605.png",
          width: 220,
        ),
      ),
      body: const Center(
          child: Text(
        "Face detection screen",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
