import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'AppController.dart';
import 'post.dart';

class SavedWidget extends StatefulWidget {
  final List<Post> listItems;

  const SavedWidget(this.listItems);

  @override
  State<SavedWidget> createState() => _SavedWidgetState();
}

class _SavedWidgetState extends State<SavedWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listItems.length,
      itemBuilder: (context, index) {
        var post = this.widget.listItems[index];
        return Card(
            child: Row(children: <Widget>[
          Expanded(
            child: ListTile(title: Text(post.area_name)),
          ),
        ]));
      },
    );
  }
}
