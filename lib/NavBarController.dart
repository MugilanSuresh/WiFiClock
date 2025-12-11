import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'AudioScreen.dart';
import 'HomeScreen.dart';
import 'ScheduleScreen.dart';

class NavBarController extends StatefulWidget {
  const NavBarController({super.key});

  @override
  State<NavBarController> createState() => _NavBarControllerState();
}

class _NavBarControllerState extends State<NavBarController> {
  int _selectedIndex = 0;

  // List of screens
  final List<Widget> _screens = const [
    HomeScreen(),
    AudioScreen(),
    ScheduleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)),
          color: Colors.white,
        ),
        child: GNav(
          gap: 8,
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.pink,
          padding: const EdgeInsets.all(12),
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.audiotrack,
              text: 'Audio',
            ),
            GButton(
              icon: Icons.schedule,
              text: 'Schedule',
            ),
          ],
        ),
      ),
    );
  }
}