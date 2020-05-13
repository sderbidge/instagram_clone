import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        // centerTitle: true,
        title: Text('Photo', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.x,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
