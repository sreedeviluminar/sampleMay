import 'package:flutter/material.dart';
import 'package:samplemay/MyHomePage.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  String? input;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    hintText: 'enter email',
                    labelText: 'UserName',
                    helperText: 'user name should contain lowecase letter',
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.pink),
                keyboardType: TextInputType.text,
                // obscureText: true,
                obscuringCharacter: '*',
                textCapitalization: TextCapitalization.words,
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  cut: true,
                  selectAll: true,
                  paste: true,
                ),
                // onTap: (){
                //      print('ontap worked');
                // },
                onChanged: (value) {
                  input = value;
                  print(input);
                },
              )),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text('Login'),
            ),
          )
        ],
      ),
    );
  }
}
