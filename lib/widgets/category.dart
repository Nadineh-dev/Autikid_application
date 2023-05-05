import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultCategory extends StatelessWidget {
  DefaultCategory({super.key, required this.icon, required this.categoryText, required this.function});

  Icon? icon;
  String? categoryText;
  Function()? function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xffE8EBEB),
              borderRadius: BorderRadius.circular(23),
              border: Border.all(color: const Color(0xff71c6db), width: 3)),
          child: Row(children: [
            Padding(padding: const EdgeInsets.only(left: 20), child: icon),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                categoryText!,
                style: const TextStyle(fontSize: 30, color: Color(0xff71c6db), fontWeight: FontWeight.w500),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
