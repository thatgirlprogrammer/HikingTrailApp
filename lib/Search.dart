import 'dart:convert';
import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import "AppController.dart";
import 'package:flutter/material.dart';

enum SingingCharacter { Easy, Medium, Hard }

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  Future<List<List<dynamic>>> processCsv() async {
    var result = await DefaultAssetBundle.of(context).loadString(
      "assets/data/AllTrails data - nationalpark.csv",
    );
    return const CsvToListConverter().convert(result, eol: "\n");
  }

  SingingCharacter? _difficulty = SingingCharacter.Easy;
  String description = "";
  List features = [];
  List activities = [];
  List states = [];

  final List<bool> _values = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: 400,
          height: 600,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      "Select Features",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Ada',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'The trail is ada accessible',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[0],
                      dense: true,
                      value: _values[0],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[0] = value!;
                        });
                        if (_values[0] == true) {
                          features.add('ada');
                        } else {
                          features.remove('ada');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Beach',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'The trail is at a beach',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[1],
                      dense: true,
                      value: _values[1],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[1] = value!;
                        });
                        if (_values[1] == true) {
                          features.add('beach');
                        } else {
                          features.remove('beach');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Dogs-no',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Dogs are not allowed on trail ',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[2],
                      dense: true,
                      value: _values[2],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[2] = value!;
                        });
                        if (_values[2] == true) {
                          features.add('dogs-no');
                        } else {
                          features.remove('dogs-no');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Dogs',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Dogs are allowed',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[3],
                      dense: true,
                      value: _values[3],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[3] = value!;
                        });
                        if (_values[3] == true) {
                          features.add('dogs');
                        } else {
                          features.remove('dogs');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Dogs-leash',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Dogs must be on leashes',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[4],
                      dense: true,
                      value: _values[4],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[4] = value!;
                        });
                        if (_values[4] == true) {
                          features.add('dogs-leash');
                        } else {
                          features.remove('dogs-leash');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Forest',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'The trail is in a forest',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[5],
                      dense: true,
                      value: _values[5],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[5] = value!;
                        });
                        if (_values[5] == true) {
                          features.add('forest');
                        } else {
                          features.remove('forest');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Kids',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'The trail is kid friendly',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[6],
                      dense: true,
                      value: _values[6],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[6] = value!;
                        });
                        if (_values[6] == true) {
                          features.add('kids');
                        } else {
                          features.remove('kids');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Partially-paved',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail is partially-paved',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[7],
                      dense: true,
                      value: _values[7],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[7] = value!;
                        });
                        if (_values[7] == true) {
                          features.add('partially-paved');
                        } else {
                          features.remove('partially-paved');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Paved',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail is paved',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[8],
                      dense: true,
                      value: _values[8],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[8] = value!;
                        });
                        if (_values[8] == true) {
                          features.add('paved');
                        } else {
                          features.remove('paved');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'River',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has a river',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[9],
                      dense: true,
                      value: _values[9],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[9] = value!;
                        });
                        if (_values[9] == true) {
                          features.add('river');
                        } else {
                          features.remove('river');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Strollers',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail can be used by strollers',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[10],
                      dense: true,
                      value: _values[10],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[10] = value!;
                        });
                        if (_values[10] == true) {
                          features.add('strollers');
                        } else {
                          features.remove('strollers');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Views',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has views',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[11],
                      dense: true,
                      value: _values[11],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[11] = value!;
                        });
                        if (_values[11] == true) {
                          features.add('views');
                        } else {
                          features.remove('views');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Waterfall',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has a waterfall',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[12],
                      dense: true,
                      value: _values[12],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[12] = value!;
                        });
                        if (_values[12] == true) {
                          features.add('waterfall');
                        } else {
                          features.remove('waterfall');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Wild-flowers',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has wild-flowers',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[13],
                      dense: true,
                      value: _values[13],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[13] = value!;
                        });
                        if (_values[13] == true) {
                          features.add('wild-flowers');
                        } else {
                          features.remove('wild-flowers');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Wildlife',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has wildlife',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[14],
                      dense: true,
                      value: _values[14],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[14] = value!;
                        });
                        if (_values[14] == true) {
                          features.add('wildlife');
                        } else {
                          features.remove('wildlife');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Lake',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has a lake',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[15],
                      dense: true,
                      value: _values[15],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[15] = value!;
                        });
                        if (_values[15] == true) {
                          features.add('lake');
                        } else {
                          features.remove('lake');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Hot-springs',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has hot-springs',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[16],
                      dense: true,
                      value: _values[16],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[16] = value!;
                        });
                        if (_values[16] == true) {
                          features.add('hot-springs');
                        } else {
                          features.remove('hot-springs');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Cave',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'The trail goes in a cave',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[17],
                      dense: true,
                      value: _values[17],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[17] = value!;
                        });
                        if (_values[17] == true) {
                          features.add('cave');
                        } else {
                          features.remove('cave');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Historic-site',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has a historic-site',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[18],
                      dense: true,
                      value: _values[18],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[18] = value!;
                        });
                        if (_values[18] == true) {
                          features.add('historic-site');
                        } else {
                          features.remove('historic-site');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'City-walk',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail is in a city',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[19],
                      dense: true,
                      value: _values[19],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[19] = value!;
                        });
                        if (_values[19] == true) {
                          features.add('city-walk');
                        } else {
                          features.remove('city-walk');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Rails-trails',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has a railroad',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[20],
                      dense: true,
                      value: _values[20],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[20] = value!;
                        });
                        if (_values[20] == true) {
                          features.add('rails-trails');
                        } else {
                          features.remove('rails-trails');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                      child: const Text(
                    'Select Activities',
                    style: TextStyle(fontSize: 40),
                  )),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Backpacking',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has backpacking',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[21],
                      dense: true,
                      value: _values[21],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[21] = value!;
                        });
                        if (_values[21] == true) {
                          activities.add('backpacking');
                        } else {
                          activities.remove('backpacking');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Bike-touring',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has bike-touring',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[22],
                      dense: true,
                      value: _values[22],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[22] = value!;
                        });
                        if (_values[22] == true) {
                          activities.add('bike-touring');
                        } else {
                          activities.remove('bike-touring');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Birding',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has birding',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[23],
                      dense: true,
                      value: _values[23],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[23] = value!;
                        });
                        if (_values[23] == true) {
                          activities.add('birding');
                        } else {
                          activities.remove('birding');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Camping',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has camping',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[24],
                      dense: true,
                      value: _values[24],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[24] = value!;
                        });
                        if (_values[24] == true) {
                          activities.add('camping');
                        } else {
                          activities.remove('camping');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Hiking',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has hiking',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[25],
                      dense: true,
                      value: _values[25],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[25] = value!;
                        });
                        if (_values[25] == true) {
                          activities.add('hiking');
                        } else {
                          activities.remove('hiking');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Mountain-biking',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has Mountain-biking',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[26],
                      dense: true,
                      value: _values[26],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[26] = value!;
                        });
                        if (_values[26] == true) {
                          activities.add('mountain-biking');
                        } else {
                          activities.remove('mountain-biking');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Horseback-riding',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has horseback-riding',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[27],
                      dense: true,
                      value: _values[27],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[27] = value!;
                        });
                        if (_values[27] == true) {
                          activities.add('horseback-riding');
                        } else {
                          activities.remove('horseback-riding');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Nature-trips',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has nature-trips',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[28],
                      dense: true,
                      value: _values[28],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[28] = value!;
                        });
                        if (_values[28] == true) {
                          activities.add('nature-trips');
                        } else {
                          activities.remove('nature-trips');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Trail-running',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has trail-running',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[29],
                      dense: true,
                      value: _values[29],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[29] = value!;
                        });
                        if (_values[29] == true) {
                          activities.add('trail-running');
                        } else {
                          activities.remove('trail-running');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Cross-country-skiing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has cross-country-skiing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[30],
                      dense: true,
                      value: _values[30],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[30] = value!;
                        });
                        if (_values[30] == true) {
                          activities.add('cross-country-skiing');
                        } else {
                          activities.remove('cross-country-skiing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Fishing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has fishing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[31],
                      dense: true,
                      value: _values[31],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[31] = value!;
                        });
                        if (_values[31] == true) {
                          activities.add('fishing');
                        } else {
                          activities.remove('fishing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Fly-fishing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has fly-fishing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[32],
                      dense: true,
                      value: _values[32],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[32] = value!;
                        });
                        if (_values[32] == true) {
                          activities.add('fly-fishing');
                        } else {
                          activities.remove('fly-fishing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Walking',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has walking',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[33],
                      dense: true,
                      value: _values[33],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[33] = value!;
                        });
                        if (_values[33] == true) {
                          activities.add('walking');
                        } else {
                          activities.remove('walking');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Paddle-sports',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has paddle-sports',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[34],
                      dense: true,
                      value: _values[34],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[34] = value!;
                        });
                        if (_values[34] == true) {
                          activities.add('paddle-sports');
                        } else {
                          activities.remove('paddle-sports');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Snow-shoeing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has snow-shoeing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[35],
                      dense: true,
                      value: _values[35],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[35] = value!;
                        });
                        if (_values[35] == true) {
                          activities.add('snow-shoeing');
                        } else {
                          activities.remove('snow-shoeing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Whitewater-kayaking',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has whitewater-kayaking',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[36],
                      dense: true,
                      value: _values[36],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[36] = value!;
                        });
                        if (_values[36] == true) {
                          activities.add('whitewater-kayaking');
                        } else {
                          activities.remove('whitewater-kayaking');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Canoeing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has canoeing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[37],
                      dense: true,
                      value: _values[37],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[37] = value!;
                        });
                        if (_values[37] == true) {
                          activities.add('canoeing');
                        } else {
                          activities.remove('canoeing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Rock-climbing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has rock-climbing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[38],
                      dense: true,
                      value: _values[38],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[38] = value!;
                        });
                        if (_values[38] == true) {
                          activities.add('rock-climbing');
                        } else {
                          activities.remove('rock-climbing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Skiing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has skiing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[39],
                      dense: true,
                      value: _values[39],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[39] = value!;
                        });
                        if (_values[39] == true) {
                          activities.add('skiing');
                        } else {
                          activities.remove('skiing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Snowboarding',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has snowboarding',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[40],
                      dense: true,
                      value: _values[40],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[40] = value!;
                        });
                        if (_values[40] == true) {
                          activities.add('snowboarding');
                        } else {
                          activities.remove('snowboarding');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Off-road-driving',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has off-road-driving',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[41],
                      dense: true,
                      value: _values[41],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[41] = value!;
                        });
                        if (_values[41] == true) {
                          activities.add('off-road-driving');
                        } else {
                          activities.remove('off-road-driving');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Road-biking',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has road-biking',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[42],
                      dense: true,
                      value: _values[42],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[42] = value!;
                        });
                        if (_values[42] == true) {
                          activities.add('road-biking');
                        } else {
                          activities.remove('road-biking');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Ice-climbing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has ice-climbing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[43],
                      dense: true,
                      value: _values[43],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[43] = value!;
                        });
                        if (_values[43] == true) {
                          activities.add('ice-climbing');
                        } else {
                          activities.remove('ice-climbing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Scenic-driving',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has scenic-driving',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[44],
                      dense: true,
                      value: _values[44],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[44] = value!;
                        });
                        if (_values[44] == true) {
                          activities.add('scenic-driving');
                        } else {
                          activities.remove('scenic-driving');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Surfing',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has surfing',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[45],
                      dense: true,
                      value: _values[45],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[45] = value!;
                        });
                        if (_values[45] == true) {
                          activities.add('surfing');
                        } else {
                          activities.remove('surfing');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text(
                        'Sea-kayaking',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Trail has sea-kayaking',
                        style: TextStyle(fontSize: 20),
                      ),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _values[46],
                      dense: true,
                      value: _values[46],
                      onChanged: (bool? value) {
                        setState(() {
                          _values[46] = value!;
                        });
                        if (_values[46] == true) {
                          activities.add('sea-kayaking');
                        } else {
                          activities.remove('sea-kayaking');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                      child: const Text(
                    "Enter State",
                    style: TextStyle(fontSize: 20),
                  )),
                  Container(
                    child: TextField(
                      controller: myController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter State',
                      ),
                    ),
                  ),
                  Container(
                      child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => filter(),
                    child:
                        const Text('Search', style: TextStyle(fontSize: 30.0)),
                  )),
                  Container(
                      child: Text(
                    description,
                    style: TextStyle(fontSize: 20),
                  ))
                ],
              ), //Container
            ), //Padding
          ),
        ), //Center
      ), //SizedBox
    );
  }

  filter() async {
    List<List<dynamic>> selected_trails = [];
    List<List<dynamic>> feature_vals = await processCsv();
    List<List<dynamic>> feature_vals1 = feature_vals.sublist(1);

    if (features.isEmpty) {
      selected_trails = feature_vals1;
    } else {
      for (var row in feature_vals1) {
        String list = row[15].replaceAll(" ", "");
        String list2 = list.replaceAll('\'', '"');
        List<String> list1 = json.decode(list2).cast<String>().toList();

        if (features.length > 1) {
          if (Set.of(list1).containsAll(features.toSet())) {
            selected_trails.add(row);
          }
        } else {
          if (list1.contains(features[0])) {
            selected_trails.add(row);
          }
        }
      }
    }

    List<List<dynamic>> selected_trails1 = [];
    if (activities.isEmpty) {
      selected_trails1 = selected_trails;
    } else {
      for (var row in feature_vals1) {
        String list = row[16].replaceAll(" ", "");
        String list2 = list.replaceAll('\'', '"');
        List<String> list1 = json.decode(list2).cast<String>().toList();

        if (activities.length > 1) {
          if (Set.of(list1).containsAll(activities.toSet())) {
            selected_trails1.add(row);
          }
        } else {
          if (list1.contains(activities[0])) {
            selected_trails1.add(row);
          }
        }
      }
    }

    List<List<dynamic>> selected_trails2 = [];
    String state = myController.text;
    if (state == "") {
      selected_trails2 = selected_trails1;
    } else {
      for (var row in feature_vals1) {
        String list = row[4].replaceAll(" ", "");
        String list2 = list.replaceAll('\'', '"');
        List<String> list1 = json.decode(list2).cast<String>().toList();

        if (list1.contains(state)) {
          selected_trails2.add(row);
        }
      }
    }
    Set list = selected_trails2.toSet();
    for (var value in list) {
      description =
          "${description}Trail name: ${value[1]}\nNational park: ${value[2]}\nState: ${value[4]}\nCity: ${value[3]}\nStart: ${value[6]}\nPopularity: ${value[7]}\nLength: ${value[8]}\nElevation gain: ${value[9]}\nDifficulty: ${value[10]}\nRoute type: ${value[11]}\nVisitor usage: ${value[12]}\nAverage rating: ${value[13]}\nNumber of reviews: ${value[14]}\nFeatures: ${value[15]}\nActivities: ${value[16]}\nUnits: ${value[17]}\n\n";
    }
  }
}
