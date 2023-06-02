import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/category.dart';

class MyGuideScreen extends StatelessWidget {
  const MyGuideScreen({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          const Text(
                            "My Guide",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 40),
                            child: Container(
                              height: 177,
                              child: Image.asset("assets/images/myguide.png"),
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
                        height: 480,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 460,
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
                                          padding: const EdgeInsets.all(
                                              10), // Border width
                                          decoration: BoxDecoration(
                                              borderRadius: borderRadius),
                                          child: ClipRRect(
                                            borderRadius: borderRadius,
                                            child: SizedBox.fromSize(
                                              size: const Size.fromRadius(
                                                  60), // Image radius
                                              child: Image.asset(
                                                  'assets/images/dos&donts.png',
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Dos and Don'ts",
                                            style: TextStyle(
                                              fontSize: 23,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: SingleChildScrollView(
                                          child: BulletList(const [
                                        "be patient",
                                        "teach them how to express their feelings without being agressive",
                                        "Always stay positive",
                                        "Don't : blame every problem on thei autism",
                                        "Don't : punish them for stimming or meltdowns",
                                        "Don't : let them think that autism is bad . Autistic people are not beter or worse they are just different"
                                      ])),
                                    )
                                  ])),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 470,
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
                                          padding: const EdgeInsets.all(
                                              10), // Border width
                                          decoration: BoxDecoration(
                                              borderRadius: borderRadius),
                                          child: ClipRRect(
                                            borderRadius: borderRadius,
                                            child: SizedBox.fromSize(
                                              size: const Size.fromRadius(
                                                  60), // Image radius
                                              child: Image.asset(
                                                  'assets/images/HowToDealWithEpisodes.png',
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 170,
                                          child: const Padding(
                                            padding:
                                                EdgeInsets.only(left: 28),
                                            child: Center(
                                                child: Text(
                                              "Causes of meltdowns",
                                              style: TextStyle(fontSize: 23),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: SingleChildScrollView(
                                          child: BulletList(const [
                                        "We should first define what meltdown actually is. A meltdown is an intense response to overwhelming situations by the person",
                                        "This could happen when an individal by the current situations. it could cause loss of control",
                                        "This can be exhibited in different manners. The loss of control shows through  verbal expressions like yelling or crying, or it can be physical like kicking or biting",
                                      ])),
                                    )
                                  ])),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 590,
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
                                          padding: const EdgeInsets.all(
                                              10), // Border width
                                          decoration: BoxDecoration(
                                              borderRadius: borderRadius),
                                          child: ClipRRect(
                                            borderRadius: borderRadius,
                                            child: SizedBox.fromSize(
                                              size: const Size.fromRadius(
                                                  60), // Image radius
                                              child: Image.asset(
                                                  'assets/images/motherCalmingHerChild.png',
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 170,
                                          width: 170,
                                          child: const Padding(
                                            padding:
                                                EdgeInsets.only(left: 28),
                                            child: Center(
                                                child: Text(
                                              "How to calm your child during a meltdown",
                                              style: TextStyle(fontSize: 23),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: SingleChildScrollView(
                                          child: BulletList(const [
                                        "Have a calming routine : Although the meltdown could drain them of energy , having a calming routine for the autistic child can help them calm down",
                                        "Safety first : Children with autism may for instance fall or hit their heads , it may be a good idea to have a startegy in place to make it safe for the duration of meltdown",
                                        "Keep a diary : taking notes on when and where the meltdown occurs could help in preventing future ones",
                                        "Try to stay calm : it is mportant that you are not adding stress to the situation while your child is having a meltdown"
                                      ])),
                                    )
                                  ])),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 680,
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
                                          padding: const EdgeInsets.all(
                                              10), // Border width
                                          decoration: BoxDecoration(
                                              borderRadius: borderRadius),
                                          child: ClipRRect(
                                            borderRadius: borderRadius,
                                            child: SizedBox.fromSize(
                                              size: const Size.fromRadius(
                                                  60), // Image radius
                                              child: Image.asset(
                                                  'assets/images/mother&childPlaying.png',
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 170,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 28),
                                            child: Center(
                                                child: Text(
                                              "How to build trust with your child ",
                                              style: TextStyle(fontSize: 23),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: SingleChildScrollView(
                                          child: BulletList(const [
                                        "Acknowledge Their Feelings : Acknowledging your child’s feelings and responding empathetically will form a loving and trusting relationship between you. Your child will feel more open to expressing themselves to you without feeling afraid or ashamed.",
                                        "Be Straightforward About Plans : Tell your child where you both are going, the duration you’ll be there, and what’s going to happen. Give them as much detail as possible to prevent any surprises",
                                        "Get To Know Their Interests and Engage : Show genuine interest by asking questions and engaging in conversation",
                                        "Allow Them To Have Some Control : Allowing your child to have choices and giving them a say in activities, meals, or schedules will help build a trustworthy and open relationship"
                                      ])),
                                    )
                                  ]))
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
