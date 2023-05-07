import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Home2Screen extends StatelessWidget {
  Home2Screen({Key? key}) : super(key: key);

  List<dynamic> imageList = [
    {"id": 1, "imagepath": "assets/images/istockphoto-1335977945-612x612.jpg"},
    {"id": 2, "imagepath": "assets/images/istockphoto-1337094863-612x612.jpg"},
    {"id": 3, "imagepath": "assets/images/Screenshot 2023-05-05 153945.png"},
    {"id": 4, "imagepath": "assets/images/Why-did-my-child.jpg"}
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              /* Stack(
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
                        onPageChanged: (index, reason) {},
                      ),
                    ),
                  )
                ],
              ),
               */
              Container(
                height: 200,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Screenshot 2023-05-07 133249.png",
                      height: 200,
                      width: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: Container(
                          height: 100,
                          width: 160,
                          child: const Text(
                            "Understand your kid",
                            style:
                                TextStyle(fontSize: 30, color: MyColors.myblue),
                          )),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15,right: 150),
                child: Text(
                  "Common symptoms",
                  style: TextStyle(fontSize: 25, color: MyColors.myblue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: symptomsContainer(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: symptomsContainer(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: symptomsContainer(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: symptomsContainer(),
              ),
              
            ],
          ),
        ));
  }
}

Container symptomsContainer() {
  return Container(
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(
        color: MyColors.myblue,
        style: BorderStyle.solid,
        width: 2,
      ),
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Row(
      children: [
        Image.asset(
          "assets/images/Screenshot 2023-05-06 230139.png",
          height: 120,
          width: 150,
        ),
        Text(
          "Depression and Anxiety",
          style: TextStyle(fontSize: 20, color: MyColors.myblue),
        )
      ],
    ),
  );
}
