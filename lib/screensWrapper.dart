import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_3/profile_screen.dart';
import 'package:flutter_session_3/settings_screen.dart';

import 'home_screen.dart';

class ScreensWrapper extends StatefulWidget {
  const ScreensWrapper({Key? key}) : super(key: key);

  @override
  State<ScreensWrapper> createState() => _ScreensWrapperState();
}

class _ScreensWrapperState extends State<ScreensWrapper> {
  int navigationIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body: screens [navigationIndex],

    bottomNavigationBar: CurvedNavigationBar(
    color: Colors.blue,
    backgroundColor: Colors.white,
    items: <Widget>[
    Icon(Icons.home, size: 30, color: Colors.white,),
    Icon(Icons.person, size: 30, color: Colors.white,),
    Icon(Icons.settings, size: 30, color: Colors.white,),
    ],
    onTap: (index) {
    setState(() {
    navigationIndex = index;
    });
    },
    ),
    );
  }
}
