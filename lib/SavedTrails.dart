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
        appBar: AppBar(
            title: const Text('Hiking Trails in Georgia'),
            centerTitle: true,
            backgroundColor: Colors.red[600]),
        body: Column(children: <Widget>[
          Expanded(
            flex: 3,
            child: InteractiveViewer(
              panEnabled: true,
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                'assets/images/Figure_1.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: InteractiveViewer(
              panEnabled: true,
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                'assets/images/Figure_2.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: InteractiveViewer(
              panEnabled: true,
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                'assets/images/Figure_3.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: InteractiveViewer(
              panEnabled: true,
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                'assets/images/Figure_4.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]));
  }
}
