import 'package:flutter/material.dart';
import 'AppController.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AppController()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      const Text(
        "Login",
        style: TextStyle(fontSize: 40),
      ),
      SizedBox(height: 20),
      const Text(
        "Enter Email",
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(height: 20),
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Email',
        ),
      ),
      SizedBox(height: 20),
      const Text(
        "Enter Password",
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(height: 20),
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Password',
        ),
      ),
      SizedBox(height: 20),
      TextButton(
        style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(20)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.lightBlue)),
        onPressed: () {
          _navigateToNextScreen(context);
        },
        child: const Text('Login', style: TextStyle(fontSize: 20.0)),
      ),
      TextButton(
        style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(20)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        onPressed: () {
          _navigateToNextScreen(context);
        },
        child: const Text('Continue as guest',
            style: TextStyle(fontSize: 20.0, color: Colors.blue)),
      )
    ]));
  }
}
