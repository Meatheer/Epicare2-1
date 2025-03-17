import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/signin.dart';
import 'package:flutter_application_1/pages/verify.dart';
import 'package:flutter_application_1/shared/color.dart';
import 'package:flutter_application_1/shared/password.dart';
import 'package:flutter_application_1/shared/textfield.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPages> {
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(70, 20, 70, 10),
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(20, 60, 20, 0)),
              Image.asset(
                "assets/imges/epi.png",
                height: 112,
                width: 115,
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                "                        : الإيميل ",
                style: TextStyle(fontSize: 26, color: AppColor.darkPurplr),
              ),
              SizedBox(
                height: 10,
              ),
              ReusableTextField(
                  hintText: "youremail@gmail.com",
                  icon: Icons.email,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 30,
              ),
              Text(
                "        : تعيين كلمة المرور",
                style: TextStyle(fontSize: 26, color: AppColor.darkPurplr),
              ),
              SizedBox(
                height: 10,
              ),
              PasswordTextField(),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("نسيت كلمه المرور");
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ()),
                      //   (route) => false,
                      // );
                    },
                    child: Text(
                      "نسيت كلمة السر؟",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.darkPurplr,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
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
                        MaterialPageRoute(builder: (context) => VrifyEmail()),
                      );
                    },
                    child: Text(
                      " تسجيل الدخول",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF392450)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(60, 8, 60, 10)))),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                        (route) => false,
                      );
                    },
                    child: Text(
                      " تسجيل جديد",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.darkPurplr,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    " ليس لديك حساب ؟",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
