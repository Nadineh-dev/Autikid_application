import 'package:flutter/material.dart';
import 'package:project2/constants/colors.dart';
import 'package:project2/screens/face_detecion_screen.dart';
import 'package:project2/screens/mycommunity_screen.dart';
import 'package:project2/screens/mydoctors_screen.dart';
import 'package:project2/screens/myguide_screen.dart';
import 'package:project2/widgets/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultCategory(
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyDoctorsScreen();
                }));
              },
              icon: const Icon(
                Icons.medical_information,
                size: 70,
                color: MyColors.myblue,
              ),
              categoryText: "My Doctors"),
          DefaultCategory(
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FaceDetectionScreen();
                }));
              },
              icon: const Icon(
                Icons.video_camera_front,
                size: 70,
                color: MyColors.myblue,
              ),
              categoryText: "Face detection"),
          DefaultCategory(
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyGuideScreen();
                }));
              },
              icon: const Icon(
                Icons.menu_book,
                size: 70,
                color: MyColors.myblue,
              ),
              categoryText: "My guide"),
          DefaultCategory(
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyCommunityScreen();
                }));
              },
              icon: const Icon(
                Icons.people,
                size: 70,
                color: MyColors.myblue,
              ),
              categoryText: "My community")
        ],
      ),
    );
  }
}
