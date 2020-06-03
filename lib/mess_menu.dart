import 'package:flutter/material.dart';

class MessMenu extends StatefulWidget {
  @override
  _MessMenuState createState() => _MessMenuState();
}

class _MessMenuState extends State<MessMenu> {
  @override
  bool isCollapsed = false;
  bool isCollapsed_Lunch = false;
  bool isCollapsed_Dinner = false;
  bool isCollapsed_Snacks = false;
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Container(
                    color: Colors.white.withOpacity(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFDE6262),
                                      Color(0xFFFFB88C),
                                    ],
                                    stops: [
                                      0.1,
                                      0.8
                                    ])),
                            width: 320,
                            height: isCollapsed ? 70 : 200,
                            child: Column(
                              children: <Widget>[
                                Center(child: Container_menu('Breakfast')),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('7:45am to 9:15am'),
                                ),
                                SizedBox(
                                  height: isCollapsed ? 0 : 35,
                                ),
                                Text(
                                  'Aalo Paratha',
                                  style: TextStyle(
                                    fontSize: isCollapsed ? 0 : 20,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  'Mint chutney',
                                  style: TextStyle(
                                    fontSize: isCollapsed ? 0 : 20,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  'Tea/Coffee',
                                  style: TextStyle(
                                    fontSize: isCollapsed ? 0 : 20,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              isCollapsed_Lunch = !isCollapsed_Lunch;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.lightBlue.withOpacity(0.5),
                            ),
                            width: 320,
                            height: isCollapsed_Lunch ? 70 : 200,
                            child: Column(
                              children: <Widget>[
                                Container_menu('Lunch'),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('12:30pm to 2:30pm'),
                                ),
                                SizedBox(
                                  height: isCollapsed_Lunch ? 0 : 35,
                                ),
                                Text(
                                  'Kaddu Masala',
                                  style: TextStyle(
                                    fontSize: isCollapsed_Lunch ? 0 : 20,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  'Rajma',
                                  style: TextStyle(
                                    fontSize: isCollapsed_Lunch ? 0 : 20,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  'Curd',
                                  style: TextStyle(
                                    fontSize: isCollapsed_Lunch ? 0 : 20,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              isCollapsed_Snacks = !isCollapsed_Snacks;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.lightBlue.withOpacity(0.5),
                            ),
                            width: 320,
                            height: isCollapsed_Snacks ? 70 : 200,
                            child: Column(
                              children: <Widget>[
                                Container_menu('Snacks'),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('5:00pm to 6:30pm'),
                                ),
                                Text(
                                  'Okay',
                                  style: TextStyle(
                                      fontSize: isCollapsed_Snacks ? 0 : null),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              isCollapsed_Dinner = !isCollapsed_Dinner;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFDE6262),
                                    Color(0xFFFFB88C),
                                  ],
                                  stops: [
                                    0.1,
                                    0.8
                                  ]),
                            ),
                            width: 320,
                            height: isCollapsed_Dinner ? 70 : 200,
                            child: Column(
                              children: <Widget>[
                                Container_menu('Dinner'),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('8:00pm to 9:45pm'),
                                ),
                                Text(
                                  'Okay',
                                  style: TextStyle(
                                      fontSize: isCollapsed_Dinner ? 0 : null),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Container_menu extends StatelessWidget {
  String title;
  Container_menu(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 22, fontFamily: 'Montserrat'),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
