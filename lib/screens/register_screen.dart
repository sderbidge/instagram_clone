import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/current_screen.dart';
import 'package:instagram_clone/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 28),
            child: Text('English (United States)'),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, CurrentScreen.id);
                  },
                  padding: EdgeInsets.all(15),
                  color: Colors.lightBlue,
                  child: Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.grey)),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Color(0xFF696969),
                    )),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color(0xFF696969),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up with email or phone number',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Divider(
                  color: Color(0xFF808080),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.id);
                        },
                        child: Text(
                          'Log in.',
                          style: TextStyle(
                            color: Color(0xFF003366),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
