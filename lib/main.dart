import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:project2/screens/chat/chat_screen.dart';
import 'package:project2/screens/home2_screen.dart';
import 'package:project2/screens/home_screen.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:project2/screens/login_screen.dart';
import 'package:project2/screens/mydoctors_screen.dart';
import 'bloc_observer.dart';
import 'network/remote/dio_helper.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  //CacheHelper.init();
  runApp(const AutikidApp());
}

class AutikidApp extends StatelessWidget {
  const AutikidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      HomeScreen.id: (context) {
        return const HomeScreen();
      }
    }, debugShowCheckedModeBanner: false, home: const HomeScreen()
        // AnimatedSplashScreen(
        //     duration: 3000,
        //     splash: "assets/images/photo_2023-03-19_02-11-31.jpg",
        //     nextScreen: LoginScreen(),
        //     splashTransition: SplashTransition.fadeTransition,
        //     backgroundColor: const Color(0xff71c6db)),
        );
  }
}
