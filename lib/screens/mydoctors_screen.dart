import 'package:flutter/material.dart';
//import 'package:project2/constants/colors.dart';
import '../widgets/category.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 14, right: 5, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          const Text(
                            "My Doctors",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 30),
                            child: Container(
                              height: 200,
                              child: Image.asset(
                                  "assets/images/Screenshot 2023-05-05 203036.png"),
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
                      Container(
                        height: 490,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: <Widget>[
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
                              const SizedBox(
                                height: 10,
                              ),
                              myExpansionTile(
                                  doctorsName: "Emad Soliman",
                                  doctorsPhone: "224354567",
                                  doctorsEducation:
                                      "Master of Psychology and Neurology, Cairo University, Egypt.",
                                  doctorsAbout:
                                      "Dr. Emad is a consultant Psychiatrist and holds the Arab Board in Psychiatry and a Masters in Psychiatry and Neurosurgery. He has a special interest in autism spectrum, hyperactivity, attention deficit and learning difficulties. Dr. Emad is specialized in children, elderly, marital counseling, addiction and various forms of addiction.",
                                  doctorsAddress:
                                      "Clinic: Dr. Emad Shokry Soliman Clinic St. from Abbas El Akkad corner of Egypt Air in front of",
                                  imageName: "photo_2023-05-03_16-19-42.jpg"),
                              const SizedBox(
                                height: 10,
                              ),
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
                              const SizedBox(
                                height: 10,
                              ),
                              myExpansionTile(
                                  doctorsName: "Nancy Labib",
                                  doctorsPhone: "2264637456",
                                  doctorsEducation:
                                      "Bachelor of Medicine and Surgery, Kasr Al-Aini School of Medicine, Cairo University, Egypt & Master Degree of Neuropsychiatry, Ain Shams University, Egypt",
                                  doctorsAbout:
                                      "Dr. Nancy Labib studied neuropsychiatry at Ain Shams University after obtaining her Bachelors from the Faculty of Medicine, Kasr Al Aini. Dr. Labib is an expert in child and adolescent therapy utilizing different techniques that best suit the needs of each case.",
                                  doctorsAddress:
                                      "Speak Clinic, Nyoum medical hub ,in front of police Academy, first settlement,second floor",
                                  imageName:
                                      "photo_2023-05-03_16-19-42 (2).jpg"),
                              const SizedBox(height: 10),
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
                              const SizedBox(height: 10),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 10,
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

final borderRadius = BorderRadius.circular(20);
