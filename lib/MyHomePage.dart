
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MyFirstApp",
          style: TextStyle(fontSize: 20, color: Colors.purple),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
        //  child: Image.network("https://previews.123rf.com/images/albertzig/albertzig1305/albertzig130500022/19631587-3d-cartoon-cute-flower.jpg"),
        child: Text('hello welcome'),
        ),
      )
    );
  }
}
