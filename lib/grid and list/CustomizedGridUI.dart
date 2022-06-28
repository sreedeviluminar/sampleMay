import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List menuList = [
    _MenuItem(Icons.verified_user, 'My Profile'),
    _MenuItem(Icons.autorenew, 'Book a Cab'),
    _MenuItem(Icons.ac_unit, 'Booking Schedule'),
    _MenuItem(Icons.center_focus_strong, 'Track Your Cab'),
    _MenuItem(Icons.question_answer, 'Help & Feedback'),
    _MenuItem(Icons.phone, 'Call to Transport'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, position) {
            return Padding(
                padding: const EdgeInsets.all(2.0),
                child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  menuList[position].icon,
                                  size: 60,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                menuList[position].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )));
          },
          itemCount: menuList.length,
        ),
      ),
    );
  }
}

class _MenuItem {

  final IconData icon;
  final String title;

  _MenuItem(this.icon, this.title);
}
