import 'package:flutter/material.dart';

class MyDoctorsScreen extends StatelessWidget {
  const MyDoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color(0xff71C6DB),
        backgroundColor: const Color(0xff71C6DB),
        centerTitle: true,
        title: Image.asset(
          "assets/images/Screenshot 2023-04-17 072137.png",
          width: 200,
        ),
      ),
      body: const Center(
          child: Text(
        "My Docotors screen",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
