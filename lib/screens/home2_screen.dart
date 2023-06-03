import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/category.dart';

class Home2Screen extends StatelessWidget {
  Home2Screen({Key? key}) : super(key: key);

  /* List<dynamic> imageList = [
    {"id": 1, "imagepath": "assets/images/istockphoto-1335977945-612x612.jpg"},
    {"id": 2, "imagepath": "assets/images/istockphoto-1337094863-612x612.jpg"},
    {"id": 3, "imagepath": "assets/images/Screenshot 2023-05-05 153945.png"},
    {"id": 4, "imagepath": "assets/images/Why-did-my-child.jpg"}
  ];
  int currentIndex = 0; */

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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: MyColors.myblue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Screenshot 2023-05-08 195301.png",
                        height: 220,
                        width: 210,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                            height: 150,
                            width: 170,
                            child: const Text(
                              "' Autism doesn't come with a manual,it comes with a parent that never gives up '",
                              style: TextStyle(
                                  fontSize: 23, color: MyColors.myGrey,fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              const Text(
                "Common symptoms",
                style: TextStyle(
                    fontSize: 25,
                    color: MyColors.myblue,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      symptomsContainer(
                          imgName:
                              "autism-early-signs-syndrome-children-symptoms-child-vector-flat-illustration-139168537.jpg",
                          text: "Sensory issues"),
                       const SizedBox(
                        height: 15,
                      ), 
                      symptomsContainer(
                          imgName: "istockphoto-984688650-612x612.jpg",
                          text: "Difficulty with social interactions"),
                       const SizedBox(
                        height: 15,
                      ) ,
                      symptomsContainer(
                          imgName: "istockphoto-1301567081-612x612.jpg",
                          text: "Difficulty with changes in routine"),
                       const SizedBox(
                        height: 15,
                      ), 
                    ],
                  ),
                  Column(
                    children: [
                      symptomsContainer(
                          imgName: "istockphoto-1337094863-612x612.jpg",
                          text: "Delayed speech and language skills"),
                       const SizedBox(
                        height: 15,
                      ), 
                      symptomsContainer(
                          imgName: "Screenshot 2023-05-09 012023.png",
                          text: "Repetitive behaviors"),
                       const SizedBox(
                        height: 15,
                      ), 
                      symptomsContainer(
                          imgName: "Screenshot 2023-05-09 012706.png",
                          text: "Depression and anxiety"),
                       const SizedBox(
                        height: 15,
                      ) 
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}


