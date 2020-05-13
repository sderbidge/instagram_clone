import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/current_screen.dart';
import 'package:instagram_clone/screens/register_screen.dart';
import 'screens/current_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        CurrentScreen.id: (context) => CurrentScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
      },
    );
  }
}
