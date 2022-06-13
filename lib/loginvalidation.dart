import 'package:flutter/material.dart';
import 'package:samplemay/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _form = GlobalKey<FormState>(); //for storing form state.

//saving form after validation  //user defined function
  void _saveForm() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _form, //assigning key to form

          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null ||
                      !(text.contains('@')) && text.isNotEmpty) {
                    return "Enter a valid email address!";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                validator: (text) {
                  if (text == null || !(text.length <= 5) && text.isNotEmpty) {
                    return "Enter valid password atmost 5 characters!";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    _saveForm();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
