import 'package:flutter/material.dart';
import "datamodel.dart";

class FilterWidget extends StatefulWidget {
  List<String> names = [];
  List<String> subTitles = [];
  List<String> addValue = [];
  List<bool> selectedValues = [];

  FilterWidget(this.names, this.subTitles, this.addValue, this.selectedValues,
      {super.key});

  @override
  State<FilterWidget> createState() =>
      _FilterWidget(names, subTitles, addValue, selectedValues);
}

class _FilterWidget extends State<FilterWidget> {
  List<String> names = [];
  List<String> subTitles = [];
  List<String> addValue = [];
  List<bool> selectedValues = [];

  _FilterWidget(
    this.names,
    this.subTitles,
    this.addValue,
    this.selectedValues,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Feature Selection"),
        ),
        body: Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(children: <Widget>[
                  getCheckboxes(context),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context, 'Yep!');
                    },
                    child:
                        const Text('Apply', style: TextStyle(fontSize: 20.0)),
                  ),
                ]))));
  }

  Widget getCheckboxes(BuildContext c) {
    List<Widget> list = <Widget>[];

    for (var i = 0; i < names.length; i++) {
      list.add(SizedBox(
        width: MediaQuery.of(context).size.width,
        /** CheckboxListTile Widget **/
        child: CheckboxListTile(
          title: Text(
            names[i],
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            subTitles[i],
            style: const TextStyle(fontSize: 20),
          ),
          autofocus: false,
          activeColor: Colors.green,
          checkColor: Colors.white,
          selected: selectedValues[i],
          dense: true,
          value: selectedValues[i],
          onChanged: (bool? value) {
            setState(() {
              selectedValues[i] = value!;
            });
            if (selectedValues[i] == true) {
              features.add(addValue[i]);
              dataList[i]['isTaped'] = true;
            } else {
              features.remove(addValue[i]);
              dataList[i]['isTaped'] = false;
            }
          },
        ),
      ));
    }

    return Column(children: list);
  }
}

class ActivityWidget extends StatefulWidget {
  List<String> names = [];
  List<String> subTitles = [];
  List<String> addValue = [];
  List<bool> selectedValues = [];

  ActivityWidget(this.names, this.subTitles, this.addValue, this.selectedValues,
      {super.key});

  @override
  _ActivityWidget createState() =>
      _ActivityWidget(names, subTitles, addValue, selectedValues);
}

class _ActivityWidget extends State<ActivityWidget> {
  List<String> names = [];
  List<String> subTitles = [];
  List<String> addValue = [];
  List<bool> selectedValues = [];

  _ActivityWidget(
    this.names,
    this.subTitles,
    this.addValue,
    this.selectedValues,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Activity Selection"),
        ),
        body: Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(children: <Widget>[
                  getCheckboxes(context),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context, 'Yep!');
                    },
                    child:
                        const Text('Apply', style: TextStyle(fontSize: 20.0)),
                  ),
                ]))));
  }

  Widget getCheckboxes(BuildContext c) {
    List<Widget> list = <Widget>[];

    for (var i = 0; i < names.length; i++) {
      list.add(SizedBox(
        width: MediaQuery.of(context).size.width,
        /** CheckboxListTile Widget **/
        child: CheckboxListTile(
          title: Text(
            names[i],
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            subTitles[i],
            style: const TextStyle(fontSize: 20),
          ),
          autofocus: false,
          activeColor: Colors.green,
          checkColor: Colors.white,
          selected: selectedValues[i],
          dense: true,
          value: selectedValues[i],
          onChanged: (bool? value) {
            setState(() {
              selectedValues[i] = value!;
            });
            if (selectedValues[i] == true) {
              activities.add(addValue[i]);
              dataList[i]['isTaped'] = true;
            } else {
              activities.remove(addValue[i]);
              dataList[i]['isTaped'] = false;
            }
          },
        ),
      ));
    }

    return Column(children: list);
  }
}
