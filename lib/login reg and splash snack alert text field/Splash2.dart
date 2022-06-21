import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../grid and list/flutterlist.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen2()));
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: MyList(),
      title: const Text(
        "Sample App",
        style: TextStyle(fontSize: 30),
      ),
      image: Image.asset("assets/images/teddy.jpg"),
      loaderColor: Colors.amberAccent,
      loadingText: const Text('Please Wait.......'),
      photoSize: 40,
      gradientBackground: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topRight,
          colors: [
            Colors.green,
            Colors.yellow,
            Colors.pink,
          ]),
    );
  }
}
