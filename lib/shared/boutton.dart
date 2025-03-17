import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: AppColor.darkPurplr, // لون الإطار
          width: 3,
        ),
        foregroundColor: AppColor.darkPurplr, // لون النص والأيقونة
        backgroundColor: AppColor.PurplrC,// لون الخلفية
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_left_outlined,
              color: AppColor.lightPurplrColor2, size: 30),
              SizedBox(width: 120,),
               Text(
                    text,
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColor.darkPurplr,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(width: 8), 
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
             mainAxisSize: MainAxisSize.min,
            children: [
             // تعديل المسافة بين النص والأيقونة
              Icon(icon, color: AppColor.darkPurplr, size: 30),
            ],
          ),
        ],
      ),
    );
  }
}
