import 'package:flutter/material.dart';
import 'AppController.dart';
import 'Signup.dart';
import 'Login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: FirstView(),
    );
  }
}

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignupWidget()));
  }

  void _navigateToNextScreen1(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginWidget()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Hiking Trails in Georgia'),
            centerTitle: true,
            backgroundColor: Colors.red[600]),
        body: Column(children: <Widget>[
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
            child: const Text('Signup', style: TextStyle(fontSize: 20.0)),
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
              LoginWidget();
            },
            child: const Text('Login', style: TextStyle(fontSize: 20.0)),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(20.0),
              color: Colors.white,
              child: Image.asset('assets/images/trail.jpeg'),
            ),
          ),
        ]));
  }
}

/*
class AddImages extends StatefulWidget {
  const AddImages({Key? key}) : super(key: key);

  @override
  State<AddImages> createState() => _AddImagesState();
}




class TrailMetrics extends StatefulWidget {
  const TrailMetrics({Key? key}) : super(key: key);

  @override
  State<TrailMetrics> createState() => _TrailMetricsState();
}

class _TrailMetricsState extends State<TrailMetrics> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



class _AddImagesState extends State<AddImages> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

*/
