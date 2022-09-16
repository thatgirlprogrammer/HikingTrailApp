import 'package:flutter/material.dart';
import 'AppController.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const AppController()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Hiking Trails in Georgia'),
            centerTitle: true,
            backgroundColor: Colors.red[600]),
        body: Column(children: <Widget>[
          const Text(
            "Signup",
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(height: 16),
          const Text(
            "Enter Name",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          SizedBox(height: 16),
          const Text(
            "Enter Email",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
          SizedBox(height: 16),
          const Text(
            "Enter Password",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
          SizedBox(height: 16),
          const Text(
            "Confirm Password",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Confirm Password',
            ),
          ),
          SizedBox(height: 16),
          TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(20)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlue)),
            onPressed: () {
              _navigateToNextScreen(context);
            },
            child: const Text('Signup', style: TextStyle(fontSize: 30.0)),
          )
        ]));
  }
}
