// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/signin.dart';
import 'package:flutter_application_1/shared/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: AppColor.lightBeige,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/imges/epi.png",
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                " ! ابدأ تجربتك ",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Epicare",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "سجل دخولك لتطبيق ",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ]),
              SizedBox(
                height: 90,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    "تسجيل جديد",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF392450)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(90, 8, 90, 10)))),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPages()),
                    );
                  },
                  child: Text(
                    "تسجيل دخول",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF392450)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(90, 8, 90, 10))))
            ],
          )),
    );
  }
}
