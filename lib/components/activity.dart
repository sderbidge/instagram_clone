import 'package:flutter/material.dart';
import 'package:instagram_clone/models/suggestion.dart';

class Activity extends StatelessWidget {
  final List<Suggestion> _suggestions = [
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Carmine',
        description: 'Dolor dignissimos quae...'),
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Davon',
        description: 'Officiis officia labor deca...'),
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Michele',
        description: 'Sit cupiditate ducimus...'),
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Arielle',
        description: 'Autem nisi inventore a...'),
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Marc',
        description: 'Placeat qui quae asper...'),
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Watson',
        description: 'Fuga tempora ipsum vol...'),
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Elliot',
        description: 'Mollitia reprehenderit he...'),
    Suggestion(
        avatar: 'assets/blank-user.jpg',
        username: 'Howell',
        description: 'Eveniet enim autem fug...'),
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
        title: Text('Activity', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Suggestions for you',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _suggestions.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image(
                                  image: NetworkImage(
                                    _suggestions[index].avatar,
                                  ),
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _suggestions[index].username,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  _suggestions[index].description,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(),
                                child: MaterialButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  color: Colors.blue,
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
