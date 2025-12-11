import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.blueGrey, // Center color
              Colors.white,  // Outer color
            ],
            center: Alignment.topCenter,
            radius: 2, // Adjust the radius of the gradient
          ),
        ),
        child: Center(
          child: Text('Radial Gradient Background', style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.white60,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
