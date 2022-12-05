import 'package:flutter/material.dart';
import 'AppController.dart';
import 'Signup.dart';
import 'Login.dart';
import 'Database.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: AppController2(),
    );
  }
}

class AppController2 extends StatefulWidget {
  const AppController2({super.key});

  @override
  State<AppController2> createState() => _AppControllerState2();
}

class _AppControllerState2 extends State<AppController2> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FirstView(),
    SignupWidget(),
    LoginWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('US National Park Hiking Trails',
            style: TextStyle(fontSize: 20)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Welcome',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Signup',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Expanded(
        flex: 3,
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(20.0),
          color: Colors.white,
          child: Image.asset('assets/images/NPSLogo.png'),
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
