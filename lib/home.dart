import 'package:flutter/material.dart';
import 'package:login/main.dart';

class home extends StatefulWidget {
  const home({super.key});
  static const routeName = "homePage";

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 167, 11),
        title: Text("HOME PAGE"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => myscaffold()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, right: 10, left: 10),
              child: Container(
                height: 80,
                margin: EdgeInsets.only(top: 10),
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Intersteller"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Game Of Thrones"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Breaking Bad"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Avengers"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Prison Break"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("One piece"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Iron Man"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Kannoor Squad"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("ZZzzz"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
              ),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("ZZzzz"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
              ),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("Zzzzzz"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
                bottom: 5,
              ),
              child: Container(
                height: 80,
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text("ZzZzZzZzZz"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
