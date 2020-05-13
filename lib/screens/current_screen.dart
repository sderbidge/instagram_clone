import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:core';
import 'package:instagram_clone/components/feed.dart';
import 'package:instagram_clone/components/search.dart';
import 'package:instagram_clone/components/upload.dart';
import 'package:instagram_clone/components/activity.dart';
import 'package:instagram_clone/components/profile.dart';

class CurrentScreen extends StatefulWidget {
  static const String id = 'current_screen';
  @override
  _CurrentScreenState createState() => _CurrentScreenState();
}

class _CurrentScreenState extends State<CurrentScreen> {
  var _pages = [
    Feed(),
    Search(),
    Upload(),
    Activity(),
    Profile(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Foundation.home),
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square),
            title: Text('Upload'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            title: Text('Likes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
