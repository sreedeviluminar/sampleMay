import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/login.dart';
import 'util/constant.dart';
void main(){
  runApp(NicAsiaApp());
}
class NicAsiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIC ASIA',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => SafeArea(
              top: true,
              child: Login(),
            ),
        '/dashboard': (context) => SafeArea(
              top: true,
              child: Dashboard(),
            ),
      },
      onUnknownRoute: (RouteSettings settings) {
        print('INSIDE Unknown routes');
        return MaterialPageRoute(
          builder: (BuildContext context) => Login(),
        );
      },
    );
  }
}
