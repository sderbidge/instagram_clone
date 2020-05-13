import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';
import 'package:instagram_clone/screens/current_screen.dart';
import 'package:instagram_clone/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  height: 38,
                ),
                TextField(
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Phone number, email or username'),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Pasword'),
                ),
                SizedBox(
                  height: 16,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, CurrentScreen.id);
                  },
                  padding: EdgeInsets.all(15),
                  color: Colors.lightBlue,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.grey)),
                ),
                SizedBox(height: 12),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Forgot your login details?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: ' Get help signing in.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF003366),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
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
                  height: 25,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, CurrentScreen.id);
                  },
                  color: Colors.lightBlue,
                  child: Text(
                    'Log in with Let\'s Auth',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.grey)),
                ),
                SizedBox(
                  height: 0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, CurrentScreen.id);
                  },
                  color: Colors.lightBlue,
                  child: Text(
                    'Log in with Facebook',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.grey)),
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
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RegisterScreen.id);
                        },
                        child: Text(
                          'Sign up.',
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
