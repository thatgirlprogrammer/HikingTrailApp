import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: AppController(),
    );
  }
}

class AppController extends StatefulWidget {
  const AppController({super.key});

  @override
  State<AppController> createState() => _AppControllerState();
}

class _AppControllerState extends State<AppController> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SearchWidget(),
    Text(
      'Index 2: Saved Trails',
      style: optionStyle,
    ),
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
            title: const Text('Hiking Trails in Georgia'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Saved',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}



class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
          children: <Widget> [
              Expanded(
                flex: 3,
                child: Container (
                margin: const EdgeInsets.all(40.0),
                padding: const EdgeInsets.all(30.0),
                color: Colors.grey[400],
                  child: Image.asset('flutter/assets/Images/trail.jpeg'),
            ),
          ),

        ]
      )
    );
  }
}


enum SingingCharacter { Easy, Medium, Hard }

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}


class _SearchWidgetState extends State<SearchWidget> {
  SingingCharacter? _difficulty = SingingCharacter.Easy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Hiking Trails in Georgia'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
        body: Column (
            children: <Widget> [
               const TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: 'Enter an area',
                  ),
               ),
              RadioListTile<SingingCharacter>(
                title: const Text('Easy',
                    style: TextStyle(fontSize: 20.0)),
                value: SingingCharacter.Easy,
                groupValue: _difficulty,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                   _difficulty = value;
                  });
                },
              ),
              RadioListTile<SingingCharacter>(
                title: const Text('Medium',
                    style: TextStyle(fontSize: 20.0)),
                value: SingingCharacter.Medium,
                groupValue: _difficulty,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _difficulty = value;
                  });
                },
              ),
              RadioListTile<SingingCharacter>(
                title: const Text('Hard',
                    style: TextStyle(fontSize: 20.0)),
                value: SingingCharacter.Hard,
                groupValue: _difficulty,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _difficulty = value;
                  });
                },
              ),
              FlatButton(
                child: const Text('Search',
                  style: TextStyle(fontSize: 20.0),),
                  color: Colors.lightBlue,
                onPressed: () {},
              ),

            ]
        )
    );
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
