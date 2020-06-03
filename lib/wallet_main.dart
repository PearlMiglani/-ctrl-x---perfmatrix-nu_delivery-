import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Orderpage.dart';

void main() {
  runApp(Wallet());
}

class Wallet extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalletApp(),
    );
  }
}

class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  var screens = [
    Orderpage(),
  ]; //screen for each tab

  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Welcome to NU Delivery',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 28),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF1FA2FF),
                              Color(0xFF12D8FA),
                              Color(0xFFA6FFCB)
                            ],
                            stops: [
                              0.1,
                              0.5,
                              0.8
                            ])),
                    child: Center(child: Text('Pay'))),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF1FA2FF),
                              Color(0xFF12D8FA),
                              Color(0xFFA6FFCB)
                            ],
                            stops: [
                              0.1,
                              0.5,
                              0.8
                            ])),
                    child: Center(child: Text('Add Money'))),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Orderpage()),
                    );
                  },
                  child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF1FA2FF),
                                Color(0xFF12D8FA),
                                Color(0xFFA6FFCB)
                              ],
                              stops: [
                                0.1,
                                0.5,
                                0.8
                              ])),
                      child: Center(child: Text('Order')))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.deepPurpleAccent),
            title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.message), title: Text("Inbox")),
      ]),
    );
  }
}
