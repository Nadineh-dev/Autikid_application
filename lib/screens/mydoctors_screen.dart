import 'package:flutter/material.dart';
import 'package:project2/constants/colors.dart';

import '../widgets/category.dart';

class MyDoctorsScreen extends StatelessWidget {
  const MyDoctorsScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /* AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 30,
                  ),
                  actions: <Widget>[
                    Container(
                      height: 75,
                        width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.green, Colors.pink],
                          stops: [0,1]
                        )
                      ),
                      child: Center(
                        child: Text("C", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    )
                  ],
                ), */
                Padding(
                  padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text("My Doctors", style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 20),
                            child: Container(
                              height: 200,
                              child:  Image.asset("assets/images/Screenshot 2023-05-05 203036.png"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      /* Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        margin: EdgeInsets.only(top: 10),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            categoryContainer("category7.png", "CT-Scan"),
                            categoryContainer("category1.png", "Ortho"),
                            categoryContainer("category2.png", "Dietician"),
                            categoryContainer("category3.png", "Physician"),
                            categoryContainer("category4.png", "Paralysis"),
                            categoryContainer("category5.png", "Cardiology"),
                            categoryContainer("category6.png", "MRI - Scan"),
                            categoryContainer("category8.png", "Gynaecology"),
                          ],
                        ),
                      ), */
                      /* Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text("Chief Doctors", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          
                        ),),
                      ), */
                      SizedBox(height: 10,),
                      SizedBox(height: 30,),
                      Container(
                        height: 450,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: <Widget>[
                              createDocWidget("photo_2023-05-03_16-19-41 (2).jpg", "Susan Thomas"),
                              createDocWidget("photo_2023-05-03_16-19-41.jpg", "Paul Barbara"),
                              createDocWidget("photo_2023-05-03_16-19-42 (2).jpg", "Nancy Williams"),
                              createDocWidget("photo_2023-05-03_16-19-42 (3).jpg", "Susan Thomas"),
                              createDocWidget("photo_2023-05-03_16-19-42.jpg", "Paul Barbara"),
                              createDocWidget("photo_2023-05-03_16-19-42.jpg", "Nancy Williams"),
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








class pathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint();
    paint.color = MyColors.myblue;

    Path path = new Path();
    path.moveTo(0, 0);
    path.lineTo(size.width*0.3, 0);
    path.quadraticBezierTo(size.width*0.5, size.height*0.03, size.width*0.42, size.height*0.17);
    path.quadraticBezierTo(size.width*0.35, size.height*0.32, 0, size.height*0.29);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}




  
