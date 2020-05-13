import 'package:flutter/material.dart';
import 'package:instagram_clone/models/profile_stats.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Profile extends StatelessWidget {
  final profile = ProfileStats(
      username: 'username',
      avatar: 'assets/blank-user.jpg',
      posts: 0,
      followers: 0,
      following: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        // centerTitle: true,
        title: Text(
          profile.username,
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Ionicons.ios_options, color: Colors.black)),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image(
                              image: AssetImage(profile.avatar),
                              width: 85,
                              height: 85,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'John L. Doe',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        profile.posts.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        profile.followers.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        profile.following.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 32,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Story Highlights',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Ionicons.md_grid),
                    onPressed: () {},
                  ),
                  IconButton(
                      icon: Icon(FontAwesome.user_circle), onPressed: null),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
