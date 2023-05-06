import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DefaultCategory extends StatelessWidget {
  DefaultCategory(
      {super.key,
      required this.icon,
      required this.categoryText,
      required this.function});

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
                style: const TextStyle(
                    fontSize: 30,
                    color: Color(0xff71c6db),
                    fontWeight: FontWeight.w500),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// Doctors category

Container createDocWidget(String imgName, String docName) {
  return Container(
    child: InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: MyColors.myblue,
        ),
        child: Container(
          padding: EdgeInsets.all(7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 70,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctors/$imgName'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dr. $docName",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    child: Text(
                      "A brief about the doctor to be added here. This is more like an introduction about the doctor",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      onTap: () {},
    ),
  );
}
