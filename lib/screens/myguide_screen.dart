import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/category.dart';

final borderRadius = BorderRadius.circular(20);

class MyGuideScreen extends StatelessWidget {
  const MyGuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CustomPaint(
              painter: pathPainter(),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          const Text(
                            "My Guide",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 20),
                            child: Container(
                              height: 177,
                              child: Image.asset("assets/images/myguide.png"),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 450,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: MyColors.myblue,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.all(10), // Border width
                                        decoration: BoxDecoration(
                                            borderRadius: borderRadius),
                                        child: ClipRRect(
                                          borderRadius: borderRadius,
                                          child: SizedBox.fromSize(
                                            size: Size.fromRadius(
                                                60), // Image radius
                                            child: Image.asset(
                                                'assets/images/dos&donts.png',
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Text("Dos and Don'ts",style: TextStyle(fontSize: 23,),),
                                      )
                                    ],
                                  )
                                ]),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
