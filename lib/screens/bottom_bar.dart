import 'package:barber_app/screens/certificate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;
  static final List<Widget> list = [
    const HomeScreen(),
    const Certificate(), //CoursesScreen(),
    const Text("Three"), //NotificationScreen(),
    const Text("Four"), //ProfileScreen()
  ];

  int _selectIndex = 0;
  void _onTap(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: Center(
              child: list[_selectIndex]
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectIndex,
          onTap: _onTap,
          elevation: 10,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items:  [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_outlined),
                activeIcon: Icon(Icons.menu_book), label: "Certificate"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                activeIcon: Icon(Icons.notifications), label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_sharp),
                activeIcon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
