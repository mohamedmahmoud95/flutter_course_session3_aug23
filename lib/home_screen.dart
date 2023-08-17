import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_3/profile_screen.dart';
import 'package:flutter_session_3/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navigationIndex = 0;
  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [
      HomeScreen(),      // Replace with your actual Home screen widget
      ProfileScreen(),
      SettingsScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),

      body: Center(child:
        Icon(Icons.home_rounded, size: 200,),),

      // bottomNavigationBar: CurvedNavigationBar(
      //   color: Colors.blue,
      //   backgroundColor: Colors.white,
      //   items: <Widget>[
      //     Icon(Icons.home, size: 30, color: Colors.white,),
      //     Icon(Icons.person, size: 30, color: Colors.white,),
      //     Icon(Icons.settings, size: 30, color: Colors.white,),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       navigationIndex = index;
      //     });
      //     },
      // ),
     // body: Container(color: Colors.blueAccent),
  //  )
    );
  }
}
