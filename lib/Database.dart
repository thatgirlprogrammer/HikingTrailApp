import 'package:firebase_database/firebase_database.dart';
import 'post.dart';
import 'dart:developer' as developer;

final databaseReference = FirebaseDatabase.instance.reference();

DatabaseReference savePost(Post post) {
  var id = databaseReference.child('posts/').push();
  id.set(post.toJson());
  return id;
}

void updatePost(Post post, DatabaseReference id) {
  id.update(post.toJson());
}

Future<List<Post>> getAllPosts() async {
  DataSnapshot dataSnapshot =
      (await databaseReference.child('posts/').once()) as DataSnapshot;
  List<Post> posts = [];
  DataSnapshot? value = dataSnapshot.value as DataSnapshot?;
  int? len = value?.children.length;

  for (int i = 0; i < len!; i++) {
    var value1 = value?.children.elementAt(i).value;
    developer.log(value1.toString());
    //Post post = new Post(value1)
  }
  return posts;
}
