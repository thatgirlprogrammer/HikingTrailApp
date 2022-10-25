import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'Database.dart';

class Post {
  late String area_name;
  late DatabaseReference _id;
  //late double popularity;
  //late double length;
  //late double elevationGain;
  //late String features;
  //late String route_type;
  //late double visitor_usage;
  //late double avg_rating;
  //late int num_reviews;
  //late String activities;
  //late String units;

  Post(
    this.area_name,
    //this.popularity,
    //this.length,
    //this.elevationGain,
    //this.features,
    //this.route_type,
    //this.visitor_usage,
    //this.num_reviews,
    //this.activities,
    //this.units,
    //this.avg_rating,
  );

  void update() {
    updatePost(this, _id);
  }

  void setId(DatabaseReference id) {
    _id = id;
  }

  Map<String, dynamic> toJson() {
    return {
      'area_name': this.area_name,
      //'popularity': this.popularity,
      //'length': this.length,
      //'elevationGain': this.elevationGain,
      //'features': this.features,
      //'route_type': this.route_type,
      //'visitor_usage': this.visitor_usage,
      //'num_reviews': this.num_reviews,
      //'activities': this.activities,
      //'units': this.units,
      //'avg_rating': this.avg_rating,
    };
  }
}

Post createPost(record) {
  Map<String, dynamic> attributes = {
    'area_name': "",
    //'popularity': 0.0,
    //'length': 0,
    //'elevationGain': 0,
    //'features': "",
    //'route_type': "",
    //'visitor_usage': 0.0,
    //'num_reviews': 0,
    //'activities': "",
    //'units': "",
    //'avg_rating': 0.0,
  };

  record.forEach((key, value) => {attributes[key] = value});
  Post post = Post(
    attributes['area_name'],
    //attributes['popularity'],
    //attributes['length'],
    //attributes['elevationGain'],
    //attributes['features'],
    //attributes['route_type'],
    //attributes['visitor_usage'],
    //attributes['num_reviews'],
    //attributes['activities'],
    //attributes['units'],
    //attributes['avg_rating'],
  );
  return post;
}
