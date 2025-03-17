// // ignore_for_file: prefer_const_constructors

// import 'package:flutter_application_1/shared/color.dart';
// import 'package:flutter/material.dart';

// class Widget091 extends StatefulWidget {
//   // ignore: non_constant_identifier_names
//   const Widget091({Key? key}) : super(key: key); // تم تصحيح اسم المتغير

//   @override
//   State<Widget091> createState() => _Widget091State();
// }

// class _Widget091State extends State<Widget091> {

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Scaffold(
//         backgroundColor: AppColor.lightBeige,

//         body: Container(
//           padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Image.asset(
//                 'assets/imges/epi.png',
//                 width: 200,
//                 height: 280,
//                 fit: BoxFit.cover,
//               ),

//               SizedBox(
//                 height: 100,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   side: BorderSide(
//                     color: AppColor.darkPurplr, // تم تصحيح اسم اللون
//                   ),
//                   foregroundColor: AppColor.lightPurplr, // تأكد من اسم اللون
//                   backgroundColor: AppColor.lightBeige,
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     const Icon(Icons.arrow_left,
//                         color: AppColor.lightPurplrColor2, size: 30),
//                     // SizedBox(width: 300),
//                     const Text(
//                       ' معلومات المريض',
//                       style: TextStyle(
//                           fontSize: 22,
//                           color: AppColor.darkPurplr,
//                           fontWeight: FontWeight.w800),
//                     ),
//                     const SizedBox(width: 15),
//                     const Icon(Icons.folder_shared_outlined,
//                         color: AppColor.darkPurplr, size: 30),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 33),
//               ElevatedButton(
//                 onPressed: () {},
//                 //لتحديد الحدود ***
//                 style: ElevatedButton.styleFrom(
//                   side: BorderSide(
//                     color: AppColor.darkPurplr,
//                     width: 3,
//                   ),
//                   foregroundColor: AppColor.darkPurplr, // تأكد من اسم اللون
//                   backgroundColor: AppColor.PurplrC,
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 22, horizontal: 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Icon(Icons.arrow_back,
//                         color: AppColor.lightPurplrColor2, size: 24),
//                     const SizedBox(width: 20),
//                     const Text(
//                       ' تسجيلات الفيديو',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                     ),
//                     const SizedBox(width: 15),
//                     const Icon(Icons.video_library_outlined,
//                         color: AppColor.lightPurplrColor2, size: 30),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 33),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   side: BorderSide(
//                     color: AppColor.darkPurplr,
//                     width: 3, // تم تصحيح اسم اللون
//                   ),
//                   foregroundColor: AppColor.darkPurplr, // تأكد من اسم اللون
//                   backgroundColor: AppColor.PurplrC,
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Icon(Icons.arrow_back,
//                         color: AppColor.lightPurplrColor2, size: 24),
//                     const SizedBox(width: 55),
//                     const Text(
//                       ' الاحصائيات',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                     ),
//                     const SizedBox(width: 15),
//                     const Icon(Icons.analytics_outlined,
//                         color: AppColor.lightPurplrColor2, size: 30),
//                   ],
//                 ),
//               ),
//               لصفحة المحددة
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/videoView.dart';
import 'package:flutter_application_1/shared/boutton.dart';
import 'package:flutter_application_1/shared/color.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBeige,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/imges/epi.png',
              width: 300,
              height: 280,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
              text: 'معلومات المريض',
              icon: Icons.folder_shared_outlined,
              onPressed: () {
                print("تم الضغط على زر معلومات المريض");
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'تسجيلات الفيديو',
              icon: Icons.video_library_outlined,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VideoView()),
                );
                print("تتم الضغط على تسجيلات الفيديو");
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: ' الإحصائيات',
              icon: Icons.analytics_outlined,
              onPressed: () {
                print("تم الضغط على زر الاحصائيات");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'صفحة الكام',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        Text(
//         'صفحة الإعدادات',
//         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
