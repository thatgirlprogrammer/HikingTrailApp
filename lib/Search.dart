import 'package:flutter/material.dart';

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
        body: Column(children: <Widget>[
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter an area',
        ),
      ),
      RadioListTile<SingingCharacter>(
        title: const Text('Easy', style: TextStyle(fontSize: 20.0)),
        value: SingingCharacter.Easy,
        groupValue: _difficulty,
        onChanged: (SingingCharacter? value) {
          setState(() {
            _difficulty = value;
          });
        },
      ),
      RadioListTile<SingingCharacter>(
        title: const Text('Medium', style: TextStyle(fontSize: 20.0)),
        value: SingingCharacter.Medium,
        groupValue: _difficulty,
        onChanged: (SingingCharacter? value) {
          setState(() {
            _difficulty = value;
          });
        },
      ),
      RadioListTile<SingingCharacter>(
        title: const Text('Hard', style: TextStyle(fontSize: 20.0)),
        value: SingingCharacter.Hard,
        groupValue: _difficulty,
        onChanged: (SingingCharacter? value) {
          setState(() {
            _difficulty = value;
          });
        },
      ),
      TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {},
        child: const Text('Search', style: TextStyle(fontSize: 20.0)),
      )
    ]));
  }
}
