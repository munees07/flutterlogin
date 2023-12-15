import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final String username = 'munees';
  final String password = 'mz7zm';
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void _login() {
    String username = userController.text;
    dynamic password = passwordController.text;

    if (username == 'munees' && password == "mz7zm") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } else if (username == '' && password == '') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Details Not Entered'),
            content: const Text('Enter the Username and Password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
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
            title: const Text('Incorrect Details'),
            content: const Text('Username or password is incorrect.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
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
        backgroundColor: const Color.fromARGB(255, 228, 167, 11),
        title: const Center(
            child: Text(
          "LOGIN PAGE",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
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
                      cursorColor: Colors.amber,
                      controller: userController,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintText: "Enter the username",
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.person),
                          prefixIconColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter a username';
                        } else if (value != username) {
                          return 'invalid username';
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: TextFormField(
                        cursorColor: Colors.amber,
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.grey),
                            hintText: "Enter the Password",
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor: Colors.grey,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(50))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter a password';
                          } else if (value != password) {
                            return 'invalid password';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _login();
                          } else {
                            _login();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 228, 167, 11),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
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
