import 'package:flutter/material.dart';
import 'AppController.dart';

class SavedWidget extends StatefulWidget {
  const SavedWidget({super.key});

  @override
  State<SavedWidget> createState() => _SavedWidgetState();
}

class _SavedWidgetState extends State<SavedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      const Text(
        "Saved Trails",
        style: TextStyle(fontSize: 40),
      ),
    ]));
  }
}
