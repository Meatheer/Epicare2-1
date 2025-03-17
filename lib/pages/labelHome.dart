import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

import 'package:flutter_application_1/shared/color.dart';

class secondsPage extends StatefulWidget {
  const secondsPage({super.key});

  @override
  State<secondsPage> createState() => _secondsPageState();
}

class _secondsPageState extends State<secondsPage> {
  int index = 0;

  final List<Widget> pages = [
    HomePage(),
    CategoriesPage(),
    // SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // backgroundColor: AppColor.lightPurplr1,
        backgroundColor: Color.fromRGBO(139, 110, 153, 100),
        height: 70,
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
          });
        },
        indicatorColor: AppColor.darkPurplr,
        
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, size: 32),
            selectedIcon:
                Icon(Icons.home, size: 32, color: AppColor.lightBeige),
            label: 'الصفحة الرئيسة', 
          ),
          NavigationDestination(
            icon: Icon(
              Icons.category_outlined,
              size: 32,
            ),
            selectedIcon:
                Icon(Icons.category, size: 32, color: AppColor.lightBeige),
            label: 'الفئات',  
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined, size: 32),
            selectedIcon:
                Icon(Icons.settings, size: 32, color: AppColor.lightBeige),
            label: 'الإعدادات', 
          ),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: pages,
      ),
    );
  }
}
