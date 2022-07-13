import 'package:flutter/material.dart';

main() {
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: NewColumnWidget(),
      ),
    );
  }
}

class NewColumnWidget extends StatelessWidget {
  const NewColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
// A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg",
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
// A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg",
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
// A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg",
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
// A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg",
          ),
        ),
        Container(
// A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg",
          ),
        ),
      ],
    );
  }
}
