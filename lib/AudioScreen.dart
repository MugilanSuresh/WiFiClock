import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: AnimatedAnalogClock(
          // location: 'Australia/Darwin',
          // Gradient Background if you want
          // backgroundGradient: RadialGradient(colors: []),
          // Set a network image as the background
          // backgroundImage: NetworkImage(
          // 'url',
          // ),
          // Alternatively, set an asset image as the background
          backgroundImage: AssetImage(
            'assets/images/logo.png',
          ),
          numberColor: Colors.black,
          clock: () => DateTime.now(),
          dialType: DialType.numberAndDashes,
          hourHandColor: Colors.lightBlueAccent,
          minuteHandColor: Colors.lightBlueAccent,
          secondHandColor: Colors.amber,
          centerDotColor: Colors.amber,
          hourDashColor: Colors.lightBlue,
          minuteDashColor: Colors.blueAccent,
          size: 350,
          showSecondHand: true,
          extendHourHand: true,
          extendMinuteHand: true,
          extendSecondHand: true,
        ),
      ),
    );
  }
}
