import 'dart:async';
import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCategory extends StatefulWidget {
  String? name;
  String? title;
  String? trailName;
  String? stateName1;
  String? city;
  String? coordinates1;
  String? lengths1;
  String? elevationGain;
  String? difficulty;
  String? routeType;
  String? avgRating;
  String? reviews1;
  String? activityValues1;
  String? featureValues1;
  String? nationalPark;

  SubCategory(
      this.title,
      this.trailName,
      this.stateName1,
      this.city,
      this.coordinates1,
      this.lengths1,
      this.elevationGain,
      this.difficulty,
      this.routeType,
      this.avgRating,
      this.reviews1,
      this.activityValues1,
      this.featureValues1,
      this.nationalPark);

  @override
  _SubCategory createState() => _SubCategory(
      this.title,
      this.trailName,
      this.stateName1,
      this.city,
      this.coordinates1,
      this.lengths1,
      this.elevationGain,
      this.difficulty,
      this.routeType,
      this.avgRating,
      this.reviews1,
      this.activityValues1,
      this.featureValues1,
      this.nationalPark);
}

class _SubCategory extends State<SubCategory> {
  String? name;
  String? title;
  String? trailName;
  String? stateName1;
  String? city;
  String? coordinates1;
  String? lengths1;
  String? elevationGain;
  String? difficulty;
  String? routeType;
  String? avgRating;
  String? reviews1;
  String? activityValues1;
  String? featureValues1;
  String? nationalPark;

  _SubCategory(
      this.title,
      this.trailName,
      this.stateName1,
      this.city,
      this.coordinates1,
      this.lengths1,
      this.elevationGain,
      this.difficulty,
      this.routeType,
      this.avgRating,
      this.reviews1,
      this.activityValues1,
      this.featureValues1,
      this.nationalPark);

  String getUrl() {
    String? list = coordinates1?.replaceAll('lat\': ', '');
    String? list1 = list?.replaceAll('lng\': ', '');
    String? list2 = list1?.replaceAll('{', '');
    String? list3 = list2?.replaceAll('}', '');
    String? list4 = list3?.replaceAll(' ', '');
    String url = "https://maps.google.com/maps?q=${list4!}";
    String finalUrl = url.replaceAll('\'', '');
    return finalUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
          backgroundColor: Colors.blue,
        ),
        body: Align(
            alignment: Alignment.topLeft,
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
                child: Text(
                  "$trailName",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  color: Colors.green,
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 10),
                  child: Row(children: [
                    Text(
                      "$difficulty",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "$avgRating",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "$reviews1",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ])),
              Container(
                color: Colors.green,
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "$nationalPark",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "$stateName1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                  child: Row(children: [
                    Text(
                      "$lengths1",
                      style: TextStyle(fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      "$elevationGain",
                      style: TextStyle(fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      "$routeType",
                      style: TextStyle(fontSize: 20),
                    ),
                  ])),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "$city",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "$featureValues1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "$activityValues1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Uri urlVal = Uri.parse(getUrl());
                    _launchUrl(urlVal);
                  },
                  child: Text('Show in maps', style: TextStyle(fontSize: 20)),
                ),
              )
            ])));
  }

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
