import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(const newApp());
}

class newApp extends StatefulWidget {
  const newApp({super.key});

  @override
  State<newApp> createState() => _newAppState();
}

class _newAppState extends State<newApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {home.routeName: (context) => home()},
    );
  }
}
