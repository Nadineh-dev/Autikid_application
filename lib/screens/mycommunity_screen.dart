import 'package:flutter/material.dart';

class MyCommunityScreen extends StatelessWidget {
  const MyCommunityScreen({Key? key}) : super(key: key);

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
        "My community screen",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
