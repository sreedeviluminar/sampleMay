import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: List2()));
}
class List2 extends StatelessWidget {
  final mylist = List.generate(50, (index) => 'Product $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List2"),
      ),
      body: ListView.builder(
        itemCount: mylist.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text("this is a list tile $index"),
            ),
          );
        },
      ),
    );
  }
}
