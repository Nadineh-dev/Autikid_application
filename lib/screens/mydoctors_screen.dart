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
                          Text(
                            "My Doctors",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 20),
                            child: Container(
                              height: 200,
                              child: Image.asset(
                                  "assets/images/Screenshot 2023-05-05 203036.png"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
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
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 450,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: <Widget>[
                              myExpansionTile(
                                  doctorsName: "Nancy Labib",
                                  doctorsPhone: "2264637456",
                                  doctorsEducation:
                                      "Bachelor of Medicine and Surgery, Kasr Al-Aini School of Medicine, Cairo University, Egypt & Master Degree of Neuropsychiatry, Ain Shams University, Egypt",
                                  doctorsAbout:
                                      "Dr. Nancy Labib studied neuropsychiatry at Ain Shams University after obtaining her Bachelors from the Faculty of Medicine, Kasr Al Aini. Dr. Labib is an expert in child and adolescent therapy utilizing different techniques that best suit the needs of each case. She also offers family and couple counseling. At present, Dr. Labib is a specialist of Neuropsychiatry at MUST University, and is a member of different prestigious societies such as: PHASE (Psychological Health Awareness Society in Egypt), the Egyptian Psychiatric Association and the Egyptian Association of Group Therapy.",
                                  doctorsAddress:
                                      "Speak Clinic, Nyoum medical hub ,in front of police Academy, first settlement,second floor",
                                  imageName:
                                      "photo_2023-05-03_16-19-42 (2).jpg"),
                              SizedBox(height: 10),
                              myExpansionTile(
                                  doctorsName: "Sally Mahmoud",
                                  doctorsPhone: "24643564676",
                                  doctorsEducation:
                                      "Master of Psychology and Neurology, Cairo University, Egypt.",
                                  doctorsAbout:
                                      "Dr. Sally Mahmoud is a psychiatry specialist with extensive years of experience in her field. She specializes in psychotherapy, behavioral and child behavior monitoring and changing.",
                                  doctorsAddress:
                                      "Zaher Zone Clinics Hassan Al Mamoun Street, Al Hay Al Asher, Nasr City, Cairo",
                                  imageName:
                                      "photo_2023-05-03_16-19-41 (2).jpg"),
                              SizedBox(height: 10),
                              myExpansionTile(
                                  doctorsName: "Jihan Taher",
                                  doctorsPhone: "224565768",
                                  doctorsEducation:
                                      "Master of Psychology and Neurology, Cairo University, Egypt.",
                                  doctorsAbout:
                                      "Dr. Jihan Taher is a consultant psychiatrist with extensive experience in her field. She has special interest in managing and treating different psychiatric problems for kids and adults such as autism, anxiety, phobias, anger management, panic disorder, depression, behavioral therapy, Alzheimer’s disease and relationship counseling.",
                                  doctorsAddress:
                                      "Zaher Zone Clinics Nasr City, Cairo",
                                  imageName:
                                      "photo_2023-05-03_16-19-42 (3).jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              myExpansionTile(
                                  doctorsName: "Khaled Attar",
                                  doctorsPhone: "226575686",
                                  doctorsEducation:
                                      "Doctorate in Psychiatry, Ain Shams University, Egypt.",
                                  doctorsAbout:
                                      "Dr. Khaled Attar is a consultant psychiatrist with expertise in managing and treating addiction, family counselling and pediatric psychiatry.",
                                  doctorsAddress:
                                      "MJ Medical Clinics 17 Babel Square,, Dokki, Cairo",
                                  imageName: "photo_2023-05-03_16-19-41.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              myExpansionTile(
                                  doctorsName: "Emad Soliman",
                                  doctorsPhone: "224354567",
                                  doctorsEducation: "Master of Psychology and Neurology, Cairo University, Egypt.",
                                  doctorsAbout: "Dr. Emad is a consultant Psychiatrist and holds the Arab Board in Psychiatry and a Masters in Psychiatry and Neurosurgery. He has a special interest in autism spectrum, hyperactivity, attention deficit and learning difficulties. Dr. Emad is specialized in children, elderly, marital counseling, addiction and various forms of addiction.",
                                  doctorsAddress: "Clinic: Dr. Emad Shokry Soliman Clinic St. from Abbas El Akkad corner of Egypt Air in front of",
                                  imageName: "photo_2023-05-03_16-19-42.jpg")
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

Container myExpansionTile({
  required String? doctorsName,
  required String? doctorsPhone,
  required String? doctorsEducation,
  required String? doctorsAbout,
  required String? doctorsAddress,
  required String? imageName,
}) {
  return Container(
    decoration: BoxDecoration(
      color: MyColors.myblue,
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    child: ExpansionTile(
      iconColor: Colors.black,
      backgroundColor: MyColors.myblue,
      title: Row(
        children: [
          Image.asset(
            "assets/images/doctors/$imageName",
            height: 90,
            width: 90,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "$doctorsName",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          )
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("phonenumber",
                      style: TextStyle(fontSize: 20, color: MyColors.myGrey)),
                ),
                Text("$doctorsPhone", style: TextStyle(fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Address",
                    style: TextStyle(fontSize: 20, color: MyColors.myGrey),
                  ),
                ),
                Text(
                  "$doctorsAddress",
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("About",
                      style: TextStyle(fontSize: 20, color: MyColors.myGrey)),
                ),
                Text("$doctorsAbout", style: TextStyle(fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
