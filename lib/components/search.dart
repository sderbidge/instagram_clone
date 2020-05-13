import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Search extends StatelessWidget {
  final List<String> _images = [
    "https://images.pexels.com/photos/3989821/pexels-photo-3989821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3689772/pexels-photo-3689772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/371589/pexels-photo-371589.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/733475/pexels-photo-733475.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/247431/pexels-photo-247431.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/1107717/pexels-photo-1107717.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/414144/pexels-photo-414144.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/414110/pexels-photo-414110.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        title: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Search',
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            AntDesign.search1,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Feather.tv,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'IGTV',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              MaterialCommunityIcons.shopping,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Shop',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Decor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Travel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Architecture',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Food',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Art',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Nature',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Style',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'TV & Movies',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Music',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Sports',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'DIY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          'Humor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(15),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                children: _images.map((image) {
                  return FadeInImage(
                    image: NetworkImage(
                      image,
                    ),
                    placeholder: AssetImage(
                      'assets/placeholder.png',
                    ),
                    width: MediaQuery.of(context).size.width,
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
