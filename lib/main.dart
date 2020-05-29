import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: WelcomeScreen(),
        initialRoute: '/welcome',
        routes: {
          '/welcome': (context) => WelcomeScreen(),
          '/home': (context) => HomeScreen()
        });
  }
}