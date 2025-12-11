import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'package:page_transition/page_transition.dart';

import 'NavBarController.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Cancel the timer if the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSplashScreen(
            splash: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF1a1c40), Colors.white],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children:[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 300,
                            width: 250,
                          ),
                        ],
                      ),
                      const Positioned(
                        bottom: 80,
                        right: 50,
                        child: Text("WiFi Audio Clock",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            nextScreen: NavBarController(),
            splashIconSize: MediaQuery.of(context).size.height,
            duration: 2500,
            pageTransitionType: PageTransitionType.leftToRight,
          ),
        ],
      ),
    );
  }
}