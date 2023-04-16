import 'package:flutter/material.dart';
import 'package:project2/widgets/button.dart';
import 'package:project2/widgets/textfield.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            Image.asset("assets/images/Screenshot 2023-03-20 025605.png",height: 130,width: 300,),
          Center(
            child: Text(
              "Sign Up",
              style: TextStyle(color: Color(0xff71c6db), fontSize: 36, fontWeight:FontWeight.bold),
            ),
          ),
          CustomTextField(hinttext: "First name",icon: Icon(Icons.person,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Last name",icon: Icon(Icons.person,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Email",icon: Icon(Icons.mail,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Password",icon: Icon(Icons.lock,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Phone number",icon: Icon(Icons.phone,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Number of children",icon: Icon(Icons.child_care,color: Color(0xff71c6db),),),
          CustomButton(buttonText: "Sign up",),
          
        ]),
      ),
    );
  }
}
