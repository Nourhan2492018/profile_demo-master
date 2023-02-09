import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final title = "Profile";
  final userName = "Nour UWK";
  final workPosition = "Flutter engineer at One Solution co.";
  final experiences = " Vice Head at : ' Sciences & Tech ' , MSP and Support";
  final skills = "Android (Java), Python, C#, Flutter";
  final homeAddress = "Egypt, Cairo, El Mokattam 99";

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.deepOrange;
    const secondaryColor = Colors.black;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: primaryColor,
        ),
        actions: [
          IconButton(
            onPressed: onNotificationPressed,
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              child: Icon(Icons.notifications, color: primaryColor),
            ),
          ),
          IconButton(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              child: Icon(Icons.search, color: primaryColor),
            ),
            onPressed: () {
              print("Search");
            },
          ),
        ],
        title: Text(
          title,
          style: TextStyle(
              color: secondaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                border: Border.all(color: secondaryColor),
              ),
              child: SizedBox(
                child: Image(
                  image: NetworkImage(
                    "https://th.bing.com/th/id/R.829b62bda1e76ab122958b98009f14da?rik=%2f9g%2btN6T9ezyEg&riu=http%3a%2f%2fclipart-library.com%2fimages%2f6TyoB9K6c.png&ehk=Js4G71PunKWRCW3417rUyngibB5PaXLEzj%2bMEUAzYC8%3d&risl=&pid=ImgRaw&r=0",
                  ),
                  alignment: Alignment.center,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Icon(
                    Icons.privacy_tip_outlined,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(workPosition,
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("540",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 40,
                        )),
                    Text("Rating",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 17,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Text("2m",
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 40,
                          )),
                      Text("Followers",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Text("1.2k",
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 40,
                          )),
                      Text("Posts",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ColoredBox(
                      color: primaryColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        color: Colors.white,
                        size: 22,
                      ),
                      TextButton(
                        onPressed: () {
                          print("followed");
                        },
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_pin,
                  color: Colors.deepOrangeAccent, size: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  homeAddress,
                  style: TextStyle(color: secondaryColor, fontSize: 20),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(Icons.work, color: Colors.orange, size: 30),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 20),
                    child: Text(
                      experiences,
                      style: TextStyle(color: secondaryColor, fontSize: 20),
                      maxLines: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.orangeAccent, size: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    skills,
                    style: TextStyle(color: secondaryColor, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onNotificationPressed() {
    print("Notifications");
  }
}
