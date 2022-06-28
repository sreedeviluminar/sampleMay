import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CustomAppBar()));
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('CustomAppBar'),
          backgroundColor: Colors.purple.withOpacity(0.6),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: Image.network(
          'https://www.whatspaper.com/wp-content/uploads/2021/07/hd-beautiful-wallpaper-whatspaper-11.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ));
  }
}
