import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemay/Drawer/screens/aboutPage.dart';
import 'package:samplemay/Drawer/screens/otherpage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {

  String mainProfilePic =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3tX9GUY0RJdxvyvuX0zIx_PHafgmoLdm5Lg&usqp=CAU";
  String otherProfilePic =
      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/368-mj-2516-02.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=9f3d0ad657bbca1c0f2db36ad7deb323";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(),
            child: Drawer(
                child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("John Doe"),
                  accountEmail: Text("johndoe@email.com"),
                  currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(mainProfilePic),
                      ),
                      onTap: () => print("Current User")),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/fullscreen.jpg"),
                    fit: BoxFit.cover),
                  ),
                ),
                ListTile(
                    title: Text("Home Page"),
                    trailing: Icon(Icons.menu),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            OtherPage("Other Page"),
                      ));
                    }),
                ListTile(
                    title: Text("About Page"),
                    trailing: Icon(Icons.info),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            aboutPage("About Page"),
                      ));
                    }),
                ListTile(
                    title: const Text("Settings Page"),
                    trailing: const Icon(Icons.security),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            OtherPage("Settings Page"),
                      ));
                    }),
                const Divider(
                  thickness: 10.0,
                ),
                ListTile(
                  title: Text("Close"),
                  leading: Icon(Icons.cancel),
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            ))));
  }
}
