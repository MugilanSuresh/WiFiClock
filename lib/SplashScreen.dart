import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  // DataBase handler = DataBase();
  // List<Config> config = [];
  bool databaseBool = false;

  @override
  void initState() {
    super.initState();
    print("SPLASH SCREEN CALLED::");
    // convertFutureListToList(handler.retrieveConfig());
    // fetchLanguage();
    // Start the timer
  }

  // void fetchLanguage() async {
  //   Map<String, dynamic>? data = await handler.getLanguage(1);
  //   print("LANGUAGE TABLE FROM DATABASE :: $data");
  //   if (data != null) {
  //     String selectedLanguage = data['selectedLanguageF']; // Extract language
  //     print("SELECTED LANGUAGE FROM DATABASE :: $selectedLanguage");
  //   } else {
  //     print("No language found in the database");
  //     await handler.insertLanguage("en","en");
  //   }
  // }

  // void convertFutureListToList(Future<List<Config>> _config) async {
  //   Future<List<Config>> _futureOfList = _config;
  //   config = await _futureOfList;
  //   print("TEST DATABASE :: $config");
  //   print("TEST DATABASE :: ${config.length}");
  //   if(config.length == 1){
  //     print("DATABASE VALUE :: ${config[0].port}");
  //     print("DATABASE VALUE :: ${config[0].ip}");
  //     print("DATABASE VALUE :: ${config[0].mac}");
  //     print("DATABASE VALUE :: ${config[0].label}");
  //     Helper.Ipaddress = "";
  //     Helper.Ipaddress = config[0].ip!.toString().trim();
  //     Helper.portF = int.parse(config[0].port!.toString().trim());
  //     Helper.DashboardName = config[0].label!;
  //     print("DEVICE=====${Helper.Macaddress}");
  //     Helper.Macaddress = config[0].mac.toString().trim();
  //     print("DEVICE1=====${Helper.Macaddress}");
  //     setState(() {
  //       databaseBool = true;
  //     });
  //   }else{
  //     setState(() {
  //       databaseBool = false;
  //     });
  //   }
  // }

  // void _navigateToConfigurationList() {
  //   if (mounted) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => ConfigurationList()),
  //     );
  //   }
  // }

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
            nextScreen: HomeScreen(),
            splashIconSize: MediaQuery.of(context).size.height,
            duration: 2500,
            pageTransitionType: PageTransitionType.leftToRight,
          ),
        ],
      ),
    );
  }


}
