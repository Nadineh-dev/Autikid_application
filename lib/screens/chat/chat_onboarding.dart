import 'package:flutter/material.dart';
import 'package:project2/constants/colors.dart';
import 'package:project2/screens/chat/chat_screen.dart';

class ChatOnboarding extends StatelessWidget {
  const ChatOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30,),
            width: 280,
            child: const Text(
              "Hi! I'm your AI assistant, feel free to ask about your concerns",
              style: TextStyle(fontSize: 30, color: MyColors.myblue,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset(
              "assets/images/Chat bot-pana.png",
              height: 350,
              width: 350,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25,top: 30),
            width: 300,
            child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: MyColors.myblue,
                    minimumSize: Size.fromHeight(80)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ChatScreen();
                  }));
                },
                child: const Text(
                  "Get started",
                  style: TextStyle(fontSize: 24),
                )),
          )
        ],
      ),
    );
  }
}
