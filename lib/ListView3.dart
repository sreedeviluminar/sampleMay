import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: List2()));
}

class List2 extends StatelessWidget {
  final mylist = List.generate(50, (index) => 'Product $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List2"),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text("this is a list tile $index"),
                ),
              );
            },
            separatorBuilder: (BuildContext context , int index){
              if (index % 5 == 0) { // Display `AdmobBanner` every 5 'separators'.
                return Container(
                 child: const Center(
                   child: Text('this is a separator'),
                 ),
                );
              }
              return Divider();
            },
            itemCount: mylist.length));
  }
}
