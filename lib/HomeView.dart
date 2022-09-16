import 'package:flutter/material.dart';
import 'Signup.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      const Text(
        "Welcome",
        style: TextStyle(fontSize: 40),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          child: const Text(
            "Trails near you",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(30.0),
          color: Colors.white,
          child: Image.asset('assets/images/trail.jpeg'),
        ),
      ),
    ]));
  }
}
