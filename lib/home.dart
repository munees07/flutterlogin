import 'package:flutter/material.dart';
import 'package:login/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const routeName = "homePage";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    'Captain America',
    'Ant Man',
    'DareDevil'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 228, 167, 11),
          title: const Text(
            "HOME PAGE",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  var sharedPref = await SharedPreferences.getInstance();
                  sharedPref.setBool(SplashScreenState.KEYLOGIN, false);
                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          color: Colors.black,
          child: ListView.separated(
            itemCount: movies.length,
            separatorBuilder: (context, index) {
              return const Divider(
                indent: 20,
                endIndent: 20,
                height: 20,
                thickness: 1,
                color: Colors.grey,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(
                  Icons.movie,
                  color: Colors.grey,
                ),
                title: Opacity(
                  opacity: 0.75,
                  child: Text(
                    movies[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              );
            },
          ),
        ));
  }
}
