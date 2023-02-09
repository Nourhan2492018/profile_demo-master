import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firstapp/view/WelcomeScreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:AnimatedSplashScreen(splash: WelcomeScreen(),nextScreen: LoginScreen()),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


