import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/color.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBeige,
      body: Container(
padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
      
        width: 400,
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.end,
           children: [
            Padding(padding: EdgeInsets.all(20)),
            Text("معلومات المريض/ة",style: TextStyle(fontSize:25, color:AppColor.darkPurplr,),
            textAlign: TextAlign.right,),
        
        
          ],),
      ),


    );

  }
}