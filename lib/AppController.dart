import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hiking_trail_app/SavedTrails.dart';
import 'package:hiking_trail_app/post.dart';
import 'Database.dart';
import "Login.dart";
import 'Signup.dart';
import 'HomeView.dart';
import 'Search.dart';
import 'dart:developer' as developer;

class AppController extends StatefulWidget {
  //final User user;
  //const AppController(this.user);

  @override
  State<AppController> createState() => _AppControllerState();
}

class _AppControllerState extends State<AppController> {
  List<Post> posts = [];
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const SearchWidget(),
    SavedWidget([Post("Georgia")]),
  ];

  void newPost(String text) {
    var post = Post(text);
    post.setId(savePost(post));
    setState(() {
      posts.add(post);
    });
  }

  @override
  void initState() {
    developer.log(posts[0].toString());
    super.initState();
    updatePosts();
  }

  void updatePosts() {
    getAllPosts().then((posts) => {
          this.setState(() {
            this.posts = posts;
          })
        });
  }

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
          backgroundColor: Colors.red[600]),
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
