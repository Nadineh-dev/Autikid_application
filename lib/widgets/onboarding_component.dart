import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constants/colors.dart';

Widget buildPage(
        {required Color color,
        required String pageImage,
        required String title,
        required String subTitle}) =>
    Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "$pageImage",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            "$title",
            style: const TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: MyColors.myblue),
          ),
          const SizedBox(height: 24,),
          Container(
            child: Text("$subTitle",style: const TextStyle(fontSize: 20,color: Colors.grey),),
          )
        ],
      ),
    );
