import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Direct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.dark,
        // centerTitle: true,
        title: Text(
          'Direct',
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(color: Colors.black),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(AntDesign.videocamera, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(SimpleLineIcons.note, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Feather.send,
                size: 70,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Instagram Direct',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Flexible(
                  child: Text(
                    'Send private photos, videos and messages to a\n friend or group.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Flexible(
                  child: Text(
                    'Send Message',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesome.camera,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
