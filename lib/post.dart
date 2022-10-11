import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'Database.dart';

class Post {
  late String body;
  late DatabaseReference _id;
  late double rating;
  late String startLocation;
  late String difficulty;
  late double length;
  late double elevationGain;
  late String features;
  //image picture

  Post(this.body, this.rating, this.startLocation, this.difficulty, this.length,
      this.elevationGain, this.features);

  void update() {
    updatePost(this, _id);
  }

  void setId(DatabaseReference id) {
    _id = id;
  }

  Map<String, dynamic> toJson() {
    return {'author': this.author, 'body': this.body};
  }
}

Post createPost(record) {
  Map<String, dynamic> attributes = {'author': '', 'body': ''};

  record.forEach((key, value) => {attributes[key] = value});
  Post post = Post(
      attributes['body'],
      attributes['rating'],
      attributes['startLocation'],
      attributes['length'],
      attributes['elevationGain'],
      attributes['features'],
      attributes['difficulty']);
  return post;
}
