import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const home(),
    );
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentSelectedIndex = 0;

  final _page = [
    const ScreenMain(),
    const SearchResult(),
    const SignUp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        gap: 8,
        tabMargin: const EdgeInsets.all(16),
        onTabChange: (index) {
          setState(() {
            _currentSelectedIndex = index;
          });
        },
        backgroundColor: Colors.lightGreenAccent,
        color: Colors.white,
        activeColor: Colors.lightGreenAccent,
        tabBackgroundColor: Colors.white,
        padding: const EdgeInsets.all(11),
        tabs: const [
          GButton(
            icon: Icons.gamepad_sharp,
            text: 'home',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.account_box,
          ),
        ],
      ),
      body: _page.elementAt(_currentSelectedIndex),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.pink[100] : Colors.white,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [const BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
              : []),
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}

class ScreenMain extends StatelessWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
          Container(
            child: const Text('1'),
          )
        ]));
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        elevation: 0,
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Search Result'),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.lightGreenAccent),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.arrow_back),
                  suffixIcon: Wrap(
                    runAlignment: WrapAlignment.center,
                    spacing: 5,
                    children: const [
                      Icon(Icons.filter_list),
                      Icon(Icons.search),
                      Icon(Icons.architecture),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20, bottom: 8),
            child: Card(
              elevation: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/china.jpg'),)
                        ),
                      ),
                      title: const Text('Lorem ipsum', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                      subtitle: Column(children: [
                        const Text("Too much repetition and padding! duh Anyway, that's how I'd do it. Simple"),
                        Row(children: const [
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star_half,color: Colors.lightGreenAccent,),
                          Text(" 4.5", style: TextStyle(fontSize: 18, color: Colors.black),),
                          Text('  90\$PH',style: TextStyle(fontSize: 18, color: Colors.black),)
                        ],

                        ),
                      ],),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 180,
                          child: TextButton(onPressed: () {}, child: const Text('PROFILE',style: const TextStyle(color: Colors.black),),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent.shade100)),
                          ),
                        ),
                        SizedBox(
                          width: 180,
                          child: TextButton(onPressed: () {}, child: const Text('HIRE',style: TextStyle(color: Colors.white),),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent)),
                          ),
                        )

                      ],)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
            child: Card(
              elevation: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/usa.jpg'),)
                        ),
                      ),
                      title: const Text('Lorem ipsum', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                      subtitle: Column(children: [
                        const Text("Too much repetition and padding! duh Anyway, that's how I'd do it. Simple"),
                        Row(children: const [
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star,color: Colors.lightGreenAccent,),
                          Icon(Icons.star_half,color: Colors.lightGreenAccent,),
                          Text(" 4.5", style: TextStyle(fontSize: 18, color: Colors.black),),
                          Text('  90\$PH',style: TextStyle(fontSize: 18, color: Colors.black),)
                        ],

                        ),
                      ],),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 180,
                          child: TextButton(onPressed: () {}, child: const Text('PROFILE',style: TextStyle(color: Colors.black),),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent.shade100)),
                          ),
                        ),
                        SizedBox(
                          width: 180,
                          child: TextButton(onPressed: () {}, child: const Text('HIRE',style: const TextStyle(color: Colors.white),),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent)),
                          ),
                        )

                      ],)
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          elevation: 0,
          toolbarHeight: 80,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.whatshot_sharp),
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Sign Up'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                height: 130,
                alignment: Alignment.center,
                child: const Text("i,m looking for a teacher",
                    style: TextStyle(color: Colors.white)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ]),
                width: double.infinity,
                height: 130,
                alignment: Alignment.center,
                child: const Text("i,m looking for a teacher",
                    style: const TextStyle(color: Colors.black)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ]),
                width: double.infinity,
                height: 130,
                alignment: Alignment.center,
                child: const Text("i,m looking for a teacher",
                    style: const TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ));
  }
}