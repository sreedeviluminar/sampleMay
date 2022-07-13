import 'package:flutter/material.dart';

import './product_list_screen.dart';
import './single_product_screen.dart';

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
      home:  ProductListScreen(),

      routes: {
        "single-product": (context) =>  SingleProductScreen(),
      },
    );
  }
}