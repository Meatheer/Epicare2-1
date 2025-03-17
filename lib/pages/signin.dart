// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'package:flutter_application_1/shared/color.dart';
import 'package:flutter_application_1/shared/duration.dart';
import 'package:flutter_application_1/shared/password.dart';
import 'package:flutter_application_1/shared/textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lightBeige,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 25, right: 25,bottom: 5),
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
                  "تسجيل جديد",
                  style: TextStyle(fontSize: 25, color: AppColor.darkPurplr),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
        body: Container(
            padding: EdgeInsets.fromLTRB(70, 20, 70, 10),
            alignment: Alignment.topRight,
            child: SingleChildScrollView(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  ": الإيميل",
                  style: TextStyle(fontSize: 26, color: AppColor.darkPurplr),
                ),
                SizedBox(
                  height: 10,
                ),
                ReusableTextField(
                    hintText: "youremail@gmail.com",
                    icon: Icons.email,
                    textInputType: TextInputType.emailAddress),
                Text(
                  ": اسم المستخدم",
                  style: TextStyle(fontSize: 26, color: AppColor.darkPurplr),
                ),
                SizedBox(
                  height: 10,
                ),
                ReusableTextField(
                  hintText: " ",
                  icon: Icons.person_2_outlined,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ": تعيين كلمة المرور",
                  style: TextStyle(fontSize: 26, color: AppColor.darkPurplr),
                ),
                SizedBox(
                  height: 10,
                ),
                PasswordTextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ": تأكيد كلمة المرور",
                  style: TextStyle(fontSize: 26, color: AppColor.darkPurplr),
                ),
                SizedBox(
                  height: 10,
                ),
                PasswordTextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " : تعيين مدة التسجيل",
                  style: TextStyle(fontSize: 26, color: AppColor.darkPurplr),
                ),
                SizedBox(
                  height: 10,
                ),
                TimeDropdown(),
                SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Welcome()),
                        );
                      },
                      child: Text(
                        "تسجيل ",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF392450)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(90, 8, 90, 10)))),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPages()),
                        );
                      },
                      child: Text(
                        " تسجيل الدخول",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.darkPurplr,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Text(
                      " لديك حساب ؟",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ]),
            )));
  }
}
