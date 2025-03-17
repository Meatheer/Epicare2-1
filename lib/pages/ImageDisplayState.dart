import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/firstPage.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/shared/color.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2 ),
      (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color:AppColor.lightBeige,
      child:Image.asset("assets/imges/epi.png")
    );
  }
}