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
            Image.asset(
              "assets/images/$categoryImage",
              height: 150,
              width: 180,
            ),
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

// Custom paint
class pathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint();
    paint.color = MyColors.myblue;

    Path path = new Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.03,
        size.width * 0.42, size.height * 0.17);
    path.quadraticBezierTo(
        size.width * 0.35, size.height * 0.32, 0, size.height * 0.29);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

//text bullets
class BulletList extends StatelessWidget {
  final List<String> strings;

  BulletList(this.strings);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 15, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u2022',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.55,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    str,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.6),
                      height: 1.55,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

//guide container
final borderRadius = BorderRadius.circular(20);
Container MyguideContainer(String guideImage, String guideTitle, String txt1,
    String txt2, String txt3, String txt4, String txt5, String txt6) {
  return Container(
    height: 450,
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            height: 480,
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
                    padding: EdgeInsets.all(10), // Border width
                    decoration: BoxDecoration(borderRadius: borderRadius),
                    child: ClipRRect(
                      borderRadius: borderRadius,
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(60), // Image radius
                        child: Image.asset('assets/images/$guideImage',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "$guideTitle",
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: SingleChildScrollView(
                    child: BulletList([
                  "$txt1",
                  "$txt2",
                  "$txt3",
                  "$txt4",
                  "$txt5",
                  "$txt6"
                ])),
              )
            ]),
          ),
        ],
      ),
    ),
  );
}

//Doctor expansion tile
Container myExpansionTile({
  required String? doctorsName,
  required String? doctorsPhone,
  required String? doctorsEducation,
  required String? doctorsAbout,
  required String? doctorsAddress,
  required String? imageName,
}) {
  return Container(
    decoration: const BoxDecoration(
      color: MyColors.myblue,
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    child: ExpansionTile(
      iconColor: Colors.black,
      backgroundColor: MyColors.myblue,
      title: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5), // Border width
            decoration: BoxDecoration(borderRadius: borderRadius),
            child: ClipRRect(
              borderRadius: borderRadius,
              child: SizedBox.fromSize(
                size: Size.fromRadius(48), // Image radius
                child: Image.asset('assets/images/doctors/$imageName',
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "$doctorsName",
                  style: TextStyle(fontSize: 23, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("$doctorsPhone"),
              )
            ],
          )
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("phonenumber",
                      style: TextStyle(fontSize: 20, color: MyColors.myGrey)),
                ),
                Text("$doctorsPhone", style: TextStyle(fontSize: 18)),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Address",
                    style: TextStyle(fontSize: 20, color: MyColors.myGrey),
                  ),
                ),
                Text(
                  "$doctorsAddress",
                  style: TextStyle(fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("About",
                      style: TextStyle(fontSize: 20, color: MyColors.myGrey)),
                ),
                Text("$doctorsAbout", style: TextStyle(fontSize: 18)),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Education",
                      style: TextStyle(fontSize: 20, color: MyColors.myGrey)),
                ),
                Text("$doctorsEducation", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
