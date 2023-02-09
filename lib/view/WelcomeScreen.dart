import 'package:firstapp/view/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  ScreenState createState() => ScreenState();
}

class ScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }
  void _navigateToLogin() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    if (!mounted) return;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
              height: 900,
              child: Image.asset('assets/images/fly.jpg', fit: BoxFit.fill)),
        ),
      ),
    );
  }


}
