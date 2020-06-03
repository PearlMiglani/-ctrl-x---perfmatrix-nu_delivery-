import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';
import 'new_gpa.dart';
import 'wallet_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GPApage(), initialRoute: '/welcome', routes: {
      '/welcome': (context) => WelcomeScreen(),
      '/home': (context) => HomeScreen(),
      '/gpa': (context) => GPApage(),
      '/wallet': (context) => Wallet(),
    });
  }
}
