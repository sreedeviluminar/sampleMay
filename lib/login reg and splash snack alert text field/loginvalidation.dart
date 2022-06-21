import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:samplemay/login%20reg%20and%20splash%20snack%20alert%20text%20field/MyHomePage.dart';
import 'package:samplemay/login%20reg%20and%20splash%20snack%20alert%20text%20field/registration.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  final _form = GlobalKey<FormState>(); //for storing form state.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form, //assigning key to form

        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || !(text.contains('@')) || text.isEmpty) {
                    return "Enter a valid email address!";
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || !(text.length <= 5) || text.isEmpty) {
                    return "Enter valid password atmost 5 characters!";
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  final isValid = _form.currentState!.validate();
                  if (isValid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Username / Password is Incorrect",
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.brown,
                        fontSize: 16.0);
                  }
                }),

            TextButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()));
            },
            child:Text( "Not a user? Register Here"),),
          ],
        ),
      ),
    );
  }
}
