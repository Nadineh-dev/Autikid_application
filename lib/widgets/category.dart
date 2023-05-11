import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DefaultCategory extends StatelessWidget {
  DefaultCategory(
      {super.key,
      required this.categoryText,
      required this.function,
      required this.categoryImage});

  String? categoryText;
  Function()? function;
  String categoryImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: MyColors.myblue,
                    blurRadius: 6.0,
                    spreadRadius: 0.7,
                    offset: Offset(0.0, 0.0))
              ],
              color: MyColors.myblue,
              borderRadius: BorderRadius.circular(23),
              border: Border.all(color: const Color(0xff71c6db), width: 1.5)),
          child: Row(children: [
            Image.asset("assets/images/$categoryImage",height: 150,width: 180,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                categoryText!,
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
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
