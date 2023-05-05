import 'package:flutter/material.dart';
import 'package:project2/constants/colors.dart';

class FaceDetectionScreen extends StatelessWidget {
  const FaceDetectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: MyColors.myblue,
        backgroundColor: MyColors.myblue,
        centerTitle: true,
        title: Image.asset(
          "assets/images/Screenshot 2023-04-17 072137.png",
          width: 200,
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
