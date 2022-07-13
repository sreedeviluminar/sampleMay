import 'package:flutter/material.dart';
import 'package:samplemay/grid%20and%20list/flutterlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // hide the debug banner
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        'settings': (BuildContext ctx) => const SettingsPage(),
        'listpage': (BuildContext ct) => MyList(),
      },
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('settings');
                  },
                  child: const Text('Register')),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('listpage');
                  },
                  child: const Text('Login')),
            ],
          ),
        ));
  }
}

// Settings Page
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Text("Route Name: ${ModalRoute.of(context)?.settings.name}"),
      ),
    );
  }
}
