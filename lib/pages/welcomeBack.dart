import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/labelHome.dart';
import 'package:flutter_application_1/pages/verify.dart';
//import 'package:flutter_application_1/pages/s.dart';


import 'package:flutter_application_1/shared/color.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lightBeige,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 16, right: 16),
              child: AppBar(
                centerTitle: true,
                backgroundColor: AppColor.lightBeige,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ))
                ],
                title: Text(
                  "تسجيل دخول",
                  style: TextStyle(fontSize: 25, color: AppColor.darkPurplr),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox()
            Container(
              alignment: Alignment.center,
              height: 450,
              width: 400,
              //color: Colors.white,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    "assets/imges/im1.jpg",
                  width: 150,
                  height: 150,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "مرحباً مجدداً !",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    " نسعى لجعل رحلتك الصحية",
                    style: TextStyle(
                        fontSize: 30,
                        wordSpacing: .5,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(200, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    " أسرع وأسهل",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 30, wordSpacing: .5,  color: const Color.fromARGB(200, 0, 0, 0),),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => secondsPage()),
                    );
                  },
                  child: Text(
                    "البدء ",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF392450)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(90, 8, 90, 10)))),
            ),
          ],
        ));
  }
}
