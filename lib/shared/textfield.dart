import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/color.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType textInputType;


  const ReusableTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        keyboardType : textInputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            icon,
            color: AppColor.lightPurplrColor2,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.darkPurplr, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.darkPurplr, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}