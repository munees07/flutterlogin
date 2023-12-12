import 'package:flutter/material.dart';
import 'login.dart';

class home extends StatefulWidget {
  const home({super.key});
  static const routeName = "homePage";

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var movies = [
    'John Wick',
    'Hangover',
    'Avengers',
    'Infinity War',
    'End Game',
    'Spider Man',
    'Batman',
    'One piece',
    'Game of Thrones',
    'Vikings',
    'Breaking Bad',
    'Money Heist',
    'Iron Man',
    'Captain America'
  ];
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
                      MaterialPageRoute(builder: (context) => Login()));
                },
                icon: Icon(Icons.logout))
          ],
        ),
        body: Container(
          color: Colors.amberAccent,
          child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.movie),
                title: Text(movies[index]),
                trailing: Icon(Icons.arrow_drop_down),
              );
            },
          ),
        ));
  }
}
