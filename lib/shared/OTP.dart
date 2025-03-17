import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFileOtp extends StatelessWidget {
  bool firstText;
  bool lastText;
  TextEditingController controller;
  TextFileOtp(
      {required this.firstText,
      required this.lastText,
      required this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 220, 220),
            borderRadius: BorderRadius.circular(23)),
        child: TextField(
          onChanged: ((value) {
            if(value.isNotEmpty && lastText==false){
              FocusScope.of(context).nextFocus();
            }
          

          }),
          keyboardType: TextInputType.phone,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1)],
          decoration: InputDecoration(
              border: InputBorder.none,
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width / 4,
                  maxHeight: MediaQuery.sizeOf(context).height / 4)),
        ));
  }
}
