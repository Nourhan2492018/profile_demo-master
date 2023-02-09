import 'package:firstapp/components/custom_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var email;
  var password;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.deepOrange;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.dark),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 14),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        leadingWidth: 70,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/hinata.jpg',
              fit: BoxFit.scaleDown ,
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 30,
            ),
            //Email TextInput
            // Container(
            //   alignment: Alignment.center,
            //   width: 370,
            //   padding: EdgeInsets.symmetric(horizontal: 30),
            //   child: TextFormField(
            //     keyboardType: TextInputType.emailAddress,
            //     controller: emailController,
            //     decoration: InputDecoration(
            //       focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: primaryColor),
            //           borderRadius: BorderRadius.circular(12)),
            //       prefixIcon: Icon(
            //         Icons.email_outlined,
            //         color: primaryColor,
            //       ),
            //       border: OutlineInputBorder(
            //         borderSide: BorderSide(color: primaryColor),
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       label: Text("Email", style: TextStyle(color: primaryColor)),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),
            //Password TextInput
            CustomTextInput(textEditingController: emailController, hint: 'email', label: 'email', prefixIcon: Icons.email),
            SizedBox(
              height: 30,
            ),
            CustomTextInput(textEditingController: passwordController, hint: 'password', label: 'password', prefixIcon: Icons.lock,suffixIcon:Icons.remove_red_eye_outlined ),

            SizedBox(
              height: 50,
            ),
            //Login Button
            Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ElevatedButton(
                onPressed: () {
                  email = emailController.text;
                  password = passwordController.text;
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //Don't have an account ? Sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 8),
                TextButton(
                    onPressed: () {},
                    child: Text("Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // Widget CustomTextInput(){
  //   return Container(
  //     alignment: Alignment.center,
  //     width: 370,
  //     padding: EdgeInsets.symmetric(horizontal: 30),
  //     child: TextFormField(
  //       keyboardType: TextInputType.emailAddress,
  //       controller: emailController,
  //       decoration: InputDecoration(
  //         focusedBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: primaryColor),
  //             borderRadius: BorderRadius.circular(12)),
  //         prefixIcon: Icon(
  //           Icons.email_outlined,
  //           color: primaryColor,
  //         ),
  //         border: OutlineInputBorder(
  //           borderSide: BorderSide(color: primaryColor),
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         label: Text("Email", style: TextStyle(color: primaryColor)),
  //       ),
  //     ),
  //   );
  // }
}
