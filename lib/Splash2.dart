import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemay/MyHomePage.dart';
import 'package:samplemay/Tables.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen2()));
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: MyTable(),
      title: const Text("Sample App",style: TextStyle(fontSize: 30),),
      image: Image.asset("assets/images/teddy.jpg"),
      loaderColor: Colors.amberAccent,
      loadingText: const Text('Please Wait.......'),
      photoSize: 40,
    );
  }
}
