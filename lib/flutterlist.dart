import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyListView'),
        ),
        body: ListView(
          children:  const [
            Center(
                child: Text(
              "My List of Fruits",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            )),
            ListTile(
              title: Text('Apple'),
              subtitle: Text('5 apples'),
              leading: CircleAvatar(child: Image(image: NetworkImage("https://static.toiimg.com/photo/msid-87133643/87133643.jpg"),),),
              trailing: Icon(Icons.arrow_downward_rounded,color: Colors.purple,),
            ),
            ListTile(
              title: Text('Banana'),
              subtitle: Text('5 apples'),
              leading: Icon(Icons.star,color: Colors.blue),
              trailing: Icon(Icons.arrow_downward_rounded,color: Colors.blue,),
            ),
            ListTile(
              tileColor: Colors.brown,
              title: Text('Orange'),
              subtitle: Text('5 apples'),
              leading: Icon(Icons.star,color: Colors.green),
              trailing: Icon(Icons.arrow_downward_rounded,color: Colors.green,),
            ),
            ListTile(
              tileColor: Colors.white12,
              title: Text('PineApple'),
              subtitle: Text('5 apples'),
              leading: Icon(Icons.star,color: Colors.red),
              trailing: Icon(Icons.arrow_downward_rounded,color: Colors.red,),
            ),
            ListTile(
              title: Text('Grape'),
              subtitle: Text('5 apples'),
              leading: Icon(Icons.star,color: Colors.yellow),
              trailing: Icon(Icons.arrow_downward_rounded,color: Colors.yellow,),
            ),
          ],
        ),
      ),
    );
  }
}
