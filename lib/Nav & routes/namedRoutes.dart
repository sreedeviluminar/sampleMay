// main.dart
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          Text("Route Name: ${ModalRoute.of(context)?.settings.name}"),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('settings');
              },
              child: const Text('Go To Settings'))
        ]),
      ),
    );
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