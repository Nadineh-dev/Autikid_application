import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/screens/chat_screen.dart';
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
      body: Column(
        children: [
          DefaultCategory(
              function:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyDoctorsScreen();
              }));
            },
              icon: Icon(
                Icons.medical_information,
                size: 70,
                color: Color(0xff71c6db),
              ),
              categoryText: "My Doctors"),
          DefaultCategory(
              function:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FaceDetectionScreen();
              }));
            }, 
              icon: Icon(
                Icons.video_camera_front,
                size: 70,
                color: Color(0xff71c6db),
              ),
              categoryText: "Face detection"),
          
          DefaultCategory(
              function:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyGuideScreen();
              }));
            },
              icon: Icon(
                Icons.menu_book,
                size: 70,
                color: Color(0xff71c6db),
              ),
              categoryText: "My guide"),
          DefaultCategory(
              function:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyCommunityScreen();
              }));
            }, 
              icon: Icon(
                Icons.people,
                size: 70,
                color: Color(0xff71c6db),
              ),
              categoryText: "My community")
        ],
      ),
    );
  }
}
