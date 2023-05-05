import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Home2Screen extends StatelessWidget {
  Home2Screen({Key? key}) : super(key: key);

  List<dynamic> imageList = [
    {"id": 1, "imagepath": "assets/images/istockphoto-1335977945-612x612.jpg"},
    {"id": 2, "imagepath": "assets/images/istockphoto-1337094863-612x612.jpg"},
    {"id": 3,"imagepath": "assets/images/Screenshot 2023-05-05 153945.png"},
    {"id": 4, "imagepath": "assets/images/Why-did-my-child.jpg"}
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(currentIndex);
              },
              child: CarouselSlider(
                items: imageList
                    .map((item) => Image.asset(
                          item["imagepath"],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ))
                    .toList(),
                carouselController: CarouselController(),
                options: CarouselOptions(
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 1.5,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    
                  },
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Text("Common symptoms",style: TextStyle(fontSize: 25,color: MyColors.myblue),),
        )
      ],
    ));
  }
}
