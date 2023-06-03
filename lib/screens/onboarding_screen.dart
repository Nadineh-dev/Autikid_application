import 'package:flutter/material.dart';
import 'package:project2/constants/colors.dart';
import 'package:project2/screens/login_screen.dart';
import 'package:project2/widgets/onboarding_component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            controller: controller,
            children: [
              buildPage(
                  color: Colors.white,
                  title: "ASD detetion",
                  subTitle: "Early detection and diagnosis of autism spectrum disorder (ASD) is critical for connecting children to intervention and maximizing development outcomes",
                  pageImage: "assets/images/Autism-cuate.png"),
              buildPage(
                  color: Colors.white,
                  title: "Chatbot",
                  subTitle: "AI assistant for answering autism related questions",
                  pageImage: "assets/images/Autism-pana.png"),
              buildPage(
                  color: Colors.white,
                  title: "parental guide",
                  subTitle: "Helpful tips to help you connect with your child and understand him ",
                  pageImage: "assets/images/Autism-rafiki.png"),
            ]),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: MyColors.myblue,
                  minimumSize: Size.fromHeight(80)),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
              },
              child: const Text(
                "Get started",
                style: TextStyle(fontSize: 24),
              ))
          : Container(
              color: Colors.white,
              height: 80,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => controller.jumpToPage(2),
                        child: const Text("SKIP",
                            style: TextStyle(
                                fontSize: 23, color: MyColors.myblue))),
                    Center(
                      child: SmoothPageIndicator(
                        effect: const WormEffect(
                            spacing: 16,
                            dotColor: Colors.grey,
                            activeDotColor: MyColors.myblue),
                        onDotClicked: (index) => controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        controller: controller,
                        count: 3,
                      ),
                    ),
                    TextButton(
                        onPressed: () => controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        child: const Text(
                          "NEXT",
                          style:
                              TextStyle(fontSize: 23, color: MyColors.myblue),
                        ))
                  ]),
            ),
    );
  }
}
