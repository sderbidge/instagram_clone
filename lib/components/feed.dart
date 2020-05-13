import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/screens/direct.dart';

class Feed extends StatelessWidget {
  final List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jazmin"),
    Story(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
        "Sylvester"),
    Story(
        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lavina"),
    Story(
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jackson"),
    Story(
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Gabriella"),
    Story(
        "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Josh"),
    Story(
        "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jessica"),
    Story(
        "https://images.pexels.com/photos/1855582/pexels-photo-1855582.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sunny"),
    Story(
        "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Tiffany"),
    Story(
        "https://images.pexels.com/photos/936229/pexels-photo-936229.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Justin"),
    Story(
        "https://images.pexels.com/photos/839011/pexels-photo-839011.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Brock"),
  ];

  final List<Post> posts = [
    Post(
      username: "Amya",
      userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/suprb/128.jpg",
      postImage:
          "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Alias omnis quo tenetur id.",
    ),
    Post(
      username: "Eldon",
      userImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/beweinreich/128.jpg",
      postImage:
          "https://images.pexels.com/photos/597049/paris-france-eiffel-tower-597049.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Eum atque praesentium animi quae.",
    ),
    Post(
      username: "Emmalee",
      userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/idiot/128.jpg",
      postImage:
          "https://images.pexels.com/photos/1830937/pexels-photo-1830937.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Beatae perferendis et sit.",
    ),
    Post(
      username: "Giovanny",
      userImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/BroumiYoussef/128.jpg",
      postImage:
          "https://images.pexels.com/photos/2245436/pexels-photo-2245436.png?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Dolor non atque praesentium sit sed ullam vel animi.",
    ),
    Post(
      username: "Kayden",
      userImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/vanchesz/128.jpg",
      postImage:
          "https://images.pexels.com/photos/1390200/pexels-photo-1390200.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Ut aut omnis modi.",
    ),
    Post(
      username: "Clement",
      userImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/Karimmove/128.jpg",
      postImage:
          "https://images.pexels.com/photos/373912/pexels-photo-373912.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Accusantium nesciunt esse atque aperiam.",
    ),
    Post(
      username: "Marilyne",
      userImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/_shahedk/128.jpg",
      postImage:
          "https://images.pexels.com/photos/161154/stained-glass-spiral-circle-pattern-161154.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Iure sed et consequatur occaecati enim ea.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        // centerTitle: true,
        title: Text('Instagram', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(new PageRouteBuilder(
                    opaque: true,
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (BuildContext context, _, __) {
                      return Direct();
                    },
                    transitionsBuilder:
                        (_, Animation<double> animation, __, Widget child) {
                      return SlideTransition(
                        child: child,
                        position: Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(animation),
                      );
                    }));
              },
              icon: Icon(Feather.send, color: Colors.black)),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _stories.map((story) {
                    return Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFF8e44ad),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image(
                                image: NetworkImage(story.image),
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(story.name),
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image(
                                        image: NetworkImage(
                                          posts[index].userImage,
                                        ),
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      posts[index].username,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  icon: Icon(SimpleLineIcons.options_vertical),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          FadeInImage(
                            image: NetworkImage(
                              posts[index].postImage,
                            ),
                            placeholder: AssetImage(
                              'assets/placeholder.png',
                            ),
                            width: MediaQuery.of(context).size.width,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.heart_o),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.comment_o),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Feather.send),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesome.bookmark_o),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Liked By ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "Andreanne,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Zula,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Josh",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " and",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " 1263 others",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                            ),
                          ),

                          // caption
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 5,
                            ),
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: posts[index].username,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ${posts[index].caption}',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                            ),
                          ),

                          // post date
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              'May 2020',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
