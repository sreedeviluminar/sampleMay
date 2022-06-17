import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Center(
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://picsum.photos/500/500?random=$index',
                    width: 200,
                    height: 137,
                  ),
                  Text(
                    'Image $index',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}