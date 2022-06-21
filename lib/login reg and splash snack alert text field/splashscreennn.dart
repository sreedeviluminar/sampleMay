import 'dart:async';

import 'package:flutter/material.dart';
import 'package:samplemay/login%20reg%20and%20splash%20snack%20alert%20text%20field/MyHomePage.dart';

void main() {
  runApp(
      MaterialApp(
          home: SplashScreenn()));
}

class SplashScreenn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreennState();
}

class SplashScreennState extends State<SplashScreenn> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/teddy.jpg"),
          ),
          const Text(
            "My APP 1",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
