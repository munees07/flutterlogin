import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _nameState();
}

class _nameState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void _login() {
    String username = userController.text;
    dynamic password = passwordController.text;

    if (username == 'munees' && password == "mz7zm") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home()),
      );
    } else if (username == '' && password == '') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Details Not Entered'),
            content: Text('Enter the Username and Password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Incorrect Details'),
            content: Text('Username or password is incorrect.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 167, 11),
        title: Center(child: Text("LOGIN PAGE")),
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset(
                        'images/batman.png',
                        width: 200,
                      ),
                    ),
                    TextFormField(
                      controller: userController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: "enter the username",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: "enter the Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.grey,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: _login,
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 228, 167, 11),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
