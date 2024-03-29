import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_animations/simple_animations.dart';

void main() =>
    runApp(const MaterialApp(home: Scaffold(body: Center(child: Page()))));

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {

  CustomAnimationControl control = CustomAnimationControl.play; // state variable

  @override
  Widget build(BuildContext context) {
    return CustomAnimation<double>(
      control: control, // bind state variable to parameter
      tween: Tween(begin: 0, end: 180),
      builder: (context, child, value) {
        return Transform.translate(
          // animation that moves childs from left to right
          offset: Offset(value, 0),
          child: child,
        );
      },
      child: MaterialButton(
        // there is a button
        color: Colors.yellow,
        onPressed:
        toggleDirection, // clicking button changes animation direction
        child: const Text('Swap'),
      ),
    );
  }

  void toggleDirection() {
    // toggle between control instructions
    setState(() {
      control =
      (control == CustomAnimationControl.play)
          ? CustomAnimationControl.playReverse
          : CustomAnimationControl.play;
    });
  }


}