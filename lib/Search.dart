import 'dart:convert';
import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import "datamodel.dart";
import 'SubCategory.dart';
import 'Flitters.dart';

enum SingingCharacter { Easy, Medium, Hard }

List<String> stateNames = [
  "State",
  "Alabama",
  "Alaska",
  "Arizona",
  "Arkansas",
  "California",
  "Colorado",
  "Connecticut",
  "Delaware",
  "Florida",
  "Georgia",
  "Hawaii",
  "Idaho",
  "Illinois",
  "Indiana",
  "Iowa",
  "Kansas",
  "Kentucky",
  "Louisiana",
  "Maine",
  'Maui',
  "Maryland",
  "Massachusetts",
  "Michigan",
  "Minnesota",
  "Mississippi",
  "Missouri",
  "Montana",
  "Nebraska",
  "Nevada",
  "New Hampshire",
  "New Jersey",
  "New Mexico",
  "New York",
  "North Carolina",
  "North Dakota",
  "Ohio",
  "Oklahoma",
  "Oregon",
  "Pennsylvania",
  "Rhode Island",
  "South Carolina",
  "South Dakota",
  "Tennessee",
  "Texas",
  "Utah",
  "Vermont",
  "Virginia",
  "Washington",
  "West Virginia",
  "Wisconsin",
  "Wyoming"
];

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List states = [];
  String description = "";
  List<String> texts = [];
  List<String> titles = [];
  List<String> trailNames = [];
  List<String> stateNames1 = [];
  List<String> cities = [];
  List<String> coordinates = [];
  List<String> lengths = [];
  List<String> elevationGains = [];
  List<String> difficulty = [];
  List<String> routeType = [];
  List<String> avgRating = [];
  List<String> reviews = [];
  List<String> activityValues = [];
  List<String> featureValues = [];
  List<String> nationalParks = [];
  List<String> names = [];
  List<String> names1 = [];
  List<String> subTitles = [];
  List<String> subTitles1 = [];
  List<String> addValue = [];
  List<String> addValue1 = [];
  List<bool> selectedValues = [];
  List<bool> selectedValues1 = [];

  TextEditingController myController = TextEditingController();
  String dropdownValue = stateNames.first;

  Future<List<List<dynamic>>> processCsv() async {
    var result = await DefaultAssetBundle.of(context).loadString(
      "assets/data/AllTrails data - nationalpark.csv",
    );
    return const CsvToListConverter().convert(result, eol: "\n");
  }

  @override
  Widget build(BuildContext context) {
    //List<Widget> _contatos = new List.generate(_count, (int i) => new Text());

    return Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(children: <Widget>[
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.green),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: stateNames
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(fontSize: 20)),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        _navigateAndDisplaySelection(context);
                      },
                      child: const Text('Features',
                          style: TextStyle(fontSize: 20.0)),
                    ),
                    Spacer(),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        _navigateAndDisplaySelection1(context);
                      },
                      child: const Text('Activities',
                          style: TextStyle(fontSize: 20.0)),
                    ),
                  ])),
              Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        dropdownValue;
                      });
                      filter();
                    },
                    child:
                        const Text('Search', style: TextStyle(fontSize: 20.0)),
                  )),
              getTextWidgets(context, texts),
            ],
          ), //Container
        ));
  }

  void _navigateToNextScreen(
      BuildContext context,
      String title,
      String trailName,
      String stateName1,
      String city,
      String coordinates1,
      String lengths1,
      String elevationGain,
      String difficulty,
      String routeType,
      String avgRating,
      String reviews1,
      String activityValues1,
      String featureValues1,
      String nationalPark) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SubCategory(
            title,
            trailName,
            stateName1,
            city,
            coordinates1,
            lengths1,
            elevationGain,
            difficulty,
            routeType,
            avgRating,
            reviews1,
            activityValues1,
            featureValues1,
            nationalPark)));
  }

  Widget getTextWidgets(BuildContext c, List<String> strings) {
    List<Widget> list = <Widget>[];

    for (var i = 0; i < strings.length; i++) {
      list.add(Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              alignment: Alignment.centerLeft,
              side: BorderSide(width: 3.0, color: Colors.blue),
            ),
            // passing the i value only, for clear int values
            child: Container(
                padding: EdgeInsets.all(5),
                child: Text(strings[i],
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.left)),
            onPressed: () {
              _navigateToNextScreen(
                  c,
                  titles[i],
                  trailNames[i],
                  stateNames1[i],
                  cities[i],
                  coordinates[i],
                  lengths[i],
                  elevationGains[i],
                  difficulty[i],
                  routeType[i],
                  avgRating[i],
                  reviews[i],
                  activityValues[i],
                  featureValues[i],
                  nationalParks[i]);
            },
          )));
    }

    return Column(children: list);
  }

  filter() async {
    description = "";
    List<List<dynamic>> selectedTrails = [];
    List<List<dynamic>> featureVals = await processCsv();
    List<List<dynamic>> featureVals1 = featureVals.sublist(1);

    if (features.isEmpty) {
      selectedTrails = featureVals1;
    } else {
      for (var row in featureVals1) {
        String list = row[15].replaceAll(" ", "");
        String list2 = list.replaceAll('\'', '"');
        List<String> list1 = json.decode(list2).cast<String>().toList();

        if (features.length > 1) {
          if (Set.of(list1).containsAll(features.toSet())) {
            selectedTrails.add(row);
          }
        } else {
          if (list1.contains(features[0])) {
            selectedTrails.add(row);
          }
        }
      }
    }

    List<List<dynamic>> selectedTrails1 = [];
    if (activities.isEmpty) {
      selectedTrails1 = selectedTrails;
    } else {
      for (var row in selectedTrails) {
        String list = row[16].replaceAll(" ", "");
        String list2 = list.replaceAll('\'', '"');
        List<String> list1 = json.decode(list2).cast<String>().toList();

        if (activities.length > 1) {
          if (Set.of(list1).containsAll(activities.toSet())) {
            selectedTrails1.add(row);
          }
        } else {
          if (list1.contains(activities[0])) {
            selectedTrails1.add(row);
          }
        }
      }
    }

    List<List<dynamic>> selectedTrails2 = [];
    String state = dropdownValue;
    if (state == "State") {
      selectedTrails2 = selectedTrails1;
    } else {
      for (var row in selectedTrails1) {
        String list = row[4];

        if (list.contains(state)) {
          selectedTrails2.add(row);
        }
      }
    }

    setText(selectedTrails2);
  }

  void setText(List<List<dynamic>> selectedTrails2) {
    texts = [];
    titles = [];
    trailNames = [];
    stateNames1 = [];
    cities = [];
    coordinates = [];
    lengths = [];
    elevationGains = [];
    difficulty = [];
    routeType = [];
    avgRating = [];
    reviews = [];
    activityValues = [];
    featureValues = [];
    nationalParks = [];

    Set list = selectedTrails2.toSet();
    for (var value in list) {
      String list = value[15].replaceAll('\'', '"');
      List<String> lst = json.decode(list).cast<String>().toList();

      String feature = "Features include ";
      for (var f in lst) {
        feature = "$feature$f, ";
      }

      String list2 = value[16].replaceAll('\'', '"');
      List<String> lst2 = json.decode(list2).cast<String>().toList();

      String activity = "Activities include ";
      for (var a in lst2) {
        activity = "$activity$a, ";
      }

      feature = feature.substring(0, feature.length - 2);
      activity = activity.substring(0, activity.length - 2);

      setState(() {
        titles.add("${value[1]}");
      });
      setState(() {
        texts.add("${value[1]}\n${value[2]}\nState: ${value[4]}\n");
      });
      setState(() {
        trailNames.add('${value[1]}');
      });
      setState(() {
        stateNames1.add('${value[4]}');
      });
      setState(() {
        cities.add('City: ${value[3]}');
      });
      setState(() {
        coordinates.add('${value[6]}');
      });

      double len = 0;
      double elevation1 = 0;
      String unit = value[17];
      if (value[17] == 'i\r') {
        len = double.parse((value[8] / 5280.0).toStringAsFixed(2));
        elevation1 = double.parse((value[9]).toStringAsFixed(2));
      } else {
        len = double.parse((value[8] / 1609.0).toStringAsFixed(2));
        elevation1 = double.parse((value[9] * 3.281).toStringAsFixed(2));
      }

      setState(() {
        lengths.add('Length\n$len miles');
      });
      setState(() {
        elevationGains.add('Elevation Gain\n$elevation1 feet');
      });

      String difficultyVal = '';
      if (value[10] == 1) {
        difficultyVal = 'easy';
      } else if (value[10] == 3) {
        difficultyVal = 'medium';
      } else if (value[10] == 5) {
        difficultyVal = 'hard';
      } else {
        difficultyVal = 'very hard';
      }

      setState(() {
        difficulty.add('Difficulty\n$difficultyVal');
      });
      setState(() {
        routeType.add('Route type\n${value[11]}');
      });
      setState(() {
        avgRating.add('Average rating\n${value[13]}');
      });
      setState(() {
        reviews.add('Reviews\n${value[14]}');
      });
      setState(() {
        featureValues.add('$feature');
      });
      setState(() {
        activityValues.add('$activity');
      });
      setState(() {
        nationalParks.add('${value[2]}');
      });
    }
  }

  getData() {
    names = [];
    subTitles = [];
    addValue = [];
    selectedValues = [];
    names1 = [];
    subTitles1 = [];
    addValue1 = [];
    selectedValues1 = [];

    for (var listMenu in dataList) {
      names.add(listMenu['name']);
      subTitles.add(listMenu['subTitle']);
      addValue.add(listMenu['ListVal']);
      selectedValues.add(listMenu['isTaped']);
    }

    for (var listMenu in dataList1) {
      names1.add(listMenu['name']);
      subTitles1.add(listMenu['subTitle']);
      addValue1.add(listMenu['ListVal']);
      selectedValues1.add(listMenu['isTaped']);
    }
  }

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    setState(() {
      getData();
    });

    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(
          builder: (context) =>
              FilterWidget(names, subTitles, addValue, selectedValues)),
    );
  }

  Future<void> _navigateAndDisplaySelection1(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    setState(() {
      getData();
    });

    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(
          builder: (context) =>
              ActivityWidget(names1, subTitles1, addValue1, selectedValues1)),
    );
  }
}
