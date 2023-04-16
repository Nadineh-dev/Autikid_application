import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:project2/screens/login_screen.dart';
import 'bloc_observer.dart';
import 'network/local/cache_helper.dart';
import 'network/remote/dio_helper.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  CacheHelper.init();
  runApp(AutikidApp());
}

class AutikidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: "assets/images/photo_2023-03-19_02-11-31.jpg",
            nextScreen: LoginScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Color(0xff71c6db)));
  }
}

