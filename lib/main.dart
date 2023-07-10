<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:lee_project/constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'list.dart';
import 'package:lee_project/constants/imageConstant.dart';
import 'package:lee_project/onBoardingpage/onBoardingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          color: tPrimaryColor,
          title: 'in_house_medical',
          debugShowCheckedModeBanner: false,
          //suseInheritedMediaQuery: true,
          theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: tGreen),

            //  GoogleFonts.latoTextTheme(
            //   // Theme.of(context).textTheme,
            // ),
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: AnimatedSplashScreen(
              duration: 1000,
              splash: Text("All Body",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: tGreen,
                  fontSize: 100),
          ),
              splashIconSize: 300,
              nextScreen: OnboardingPage(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.white),
        );
      },
    );
  }
}

=======
import 'package:flutter/material.dart';
import 'package:lee_project/constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'list.dart';
import 'package:lee_project/constants/imageConstant.dart';
import 'package:lee_project/onBoardingpage/onBoardingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          color: tPrimaryColor,
          title: 'in_house_medical',
          debugShowCheckedModeBanner: false,
          //suseInheritedMediaQuery: true,
          theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: tGreen),

            //  GoogleFonts.latoTextTheme(
            //   // Theme.of(context).textTheme,
            // ),
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: AnimatedSplashScreen(
              duration: 1000,
              splash: Text("All Body",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: tGreen,
                  fontSize: 100),
          ),
              splashIconSize: 300,
              nextScreen: OnboardingPage(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.white),
        );
      },
    );
  }
}

>>>>>>> 31f1dbf0608087e320ae57b88b07bcb091a50b7c
