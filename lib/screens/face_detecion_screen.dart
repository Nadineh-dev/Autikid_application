import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FaceDetectionScreen extends StatelessWidget {
  const FaceDetectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color(0xff71C6DB),
        backgroundColor: Color(0xff71C6DB),
        centerTitle: true,
        title: Container(
          child: Image.asset(
            "assets/images/Screenshot 2023-04-17 072137.png",
            width: 200,
          ),
        ),
      ),
      body: Center(
          child: Text(
        "Face detection screen",
        style: TextStyle(fontSize: 30),
      )),
    );
 }
}