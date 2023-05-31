import 'package:flutter/material.dart';
import 'package:project2/screens/face_detecion_screen.dart';
import 'package:project2/screens/mydoctors_screen.dart';
import 'package:project2/screens/myguide_screen.dart';
import 'package:project2/widgets/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        DefaultCategory(
            categoryText: "My doctors",
            function: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MyDoctorsScreen();
              }));
            },
            categoryImage: "doctor_pic.png"),
        DefaultCategory(
            categoryText: "Face detection",
            function: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FaceDetectionScreen();
              }));
            },
            categoryImage: "faceDetection_pic.png"),
        DefaultCategory(
            categoryText: "My guide",
            function: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MyGuideScreen();
              }));
            },
            categoryImage: "myGuide_pic.png")
      ]),
    );
  }
}
