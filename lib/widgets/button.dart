import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({ required this.buttonText}) ;

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff71c6db),
          borderRadius: BorderRadius.circular(23)
        ),
        
        width: double.infinity,
        height: 50,
        child: Center(child: Text(buttonText,style: TextStyle(color: Colors.white,fontSize: 18),)),

      ),
    );
  }
}