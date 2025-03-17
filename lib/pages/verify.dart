import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/controllers.dart';
import 'package:flutter_application_1/pages/welcomeBack.dart';
import 'package:flutter_application_1/shared/OTP.dart';
import 'package:flutter_application_1/shared/color.dart';

class VrifyEmail extends StatefulWidget {
  VrifyEmail({super.key});

  @override
  State<VrifyEmail> createState() => _VrifyEmailState();
}

class _VrifyEmailState extends State<VrifyEmail> {
   int _secondsRemaining = 59; // العداد يبدأ من 59 ثانية
  late Timer _timer;
  bool _canResend = false; // حالة التحكم في زر إعادة الإرسال

  @override
  void initState() {
    super.initState();
    _startTimer();
  }
  void _startTimer() {
    setState(() {
      _secondsRemaining = 59;
      _canResend = false;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
          print(_secondsRemaining);
        });
      } else {
        _timer.cancel();
        setState(() {
          _canResend = true; // تفعيل زر إعادة الإرسال
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    //  c1.dispose();
    // c2.dispose();
    // c3.dispose();
    // c4.dispose();
    super.dispose();
  }

  void _resendOTP() {
    if (_canResend) {
      //  هنا تضيف كود إرسال رمز OTP 
      print("تم إعادة إرسال الرمز!");
      _startTimer();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBeige,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 5),
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
              "التحقق من البريد الإلكتروني",
              style: TextStyle(fontSize: 25, color: AppColor.darkPurplr),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                
                child: Container(
                  height: 500,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 70,),
                      Image.asset(
                        "assets/imges/im2.jpg",
                        width: 130,
                        height: 130,
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "تم إرسال رمز تحقق مكون من 4 أرقام",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color:  Color.fromARGB(255, 55, 55, 55),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        "إلى بريدك الإلكتروني. يرجى إدخاله",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color:  Color.fromARGB(255, 55, 55, 55),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        "أدناه لإكمال عملية التحقق:",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color:   Color.fromARGB(255, 55, 55, 55),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFileOtp(controller: c1,firstText:true ,lastText: false,),
                      SizedBox(width: 10,),
                      TextFileOtp(controller:c2 ,firstText:false ,lastText: false,),
                      SizedBox(width: 10,),
                      TextFileOtp(controller: c3,firstText:false ,lastText: false,),
                      SizedBox(width: 10,),
                      TextFileOtp(controller:c4 ,firstText:false ,lastText: true,),
                    
                    ],
                   )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeBack()),
                  );
                },
                child: Text(
                  "تحقق ",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF392450)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  ),
                ),
              ),
             
            ),
            SizedBox(height: 5,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 18, color: Colors.black),
            children: [
              TextSpan(text: "لم يصلك الرمز؟ ",style: TextStyle(fontSize: 20)),
              if (_canResend)
                TextSpan(
                  
                  text: "إعادة الإرسال",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()..onTap = _resendOTP,
                )
              else
                TextSpan(
                  text: "أعد الإرسال خلال $_secondsRemaining ثانية",
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
            ],
          ),
        ),
        
      
                  ],),
          ],
        ),
      ),
    );
 
  }
}
