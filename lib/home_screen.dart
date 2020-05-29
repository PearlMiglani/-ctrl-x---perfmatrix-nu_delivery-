import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller = PageController(initialPage: 0);

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();

    for (var i = 2; i < 6; i++) {
      ttlist.add(
        Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Container(
            height: 40,
            width: 2,
            color: Colors.grey,
          ),
        ),
      );

      ttlist.add(
        Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Period $i',
                  style: TextStyle(
                      color: Colors.black54, fontFamily: 'Montserrat'),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  List<Widget> ttlist = [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 50),
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text(
                    'Period 1',
                    style: TextStyle(
                        color: Colors.black54, fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: <Widget>[
        Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 15.0),
                      child: Icon(
                        Icons.list,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Welcome\n\'Student name\'',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white.withOpacity(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: ttlist,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 15.0),
                      child: Icon(
                        Icons.list,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Welcome\n\'Student name\'',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white.withOpacity(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: ttlist,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
