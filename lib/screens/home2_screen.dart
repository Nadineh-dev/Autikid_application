import 'package:flutter/material.dart';

class Home2Screen extends StatelessWidget {
  const Home2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Home screen",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
