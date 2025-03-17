import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/color.dart';



class TimeDropdown extends StatefulWidget {
  @override
  _TimeDropdownState createState() => _TimeDropdownState();
}

class _TimeDropdownState extends State<TimeDropdown> {
  int selectedTime = 5; // القيمة الافتراضية

  List<int> minutes = [5, 6, 7, 8, 9, 10]; // القائمة من 5 إلى 10 دقائق

  @override
  Widget build(BuildContext context) {
    return Container(
     alignment: Alignment.centerRight,
    height: 50,
    width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(12), 
        border: Border.all(color: AppColor.lightPurplrColor2, width: 2),
        
      ),
      child: DropdownButton<int>(
        value: selectedTime,
        onChanged: (int? newValue) {
          setState(() {
            selectedTime = newValue!;
          });
        },
        items: minutes.map<DropdownMenuItem<int>>((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(
              '$value  دقائق',
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 20,color: AppColor.lightPurplrColo),
            ),
          );
        }).toList(),
        underline: Container(), // إزالة الخط السفلي الافتراضي
        icon: Icon(Icons.arrow_drop_down, color:AppColor.lightPurplrColor2,size:30,),
         // أيقونة السهم
        style: TextStyle(color: Colors.black), // لون النص
      ),
    );
  }
}