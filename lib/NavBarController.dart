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
  late PageController _pageController;

  final List<Widget> _screens = const [
    HomeScreen(),
    AudioScreen(),
    ScheduleScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _selectedIndex == 0 ? Colors.white
            : _selectedIndex == 1 ? Colors.pink : Colors.white,
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: _screens,
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.blue.shade50,
          ),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.blue.shade50,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.pink,
            padding: const EdgeInsets.all(12),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.audiotrack, text: 'Audio'),
              GButton(icon: Icons.schedule, text: 'Schedule'),
            ],
          ),
        ),
      ),
    );
  }
}
