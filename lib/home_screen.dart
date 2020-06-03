import 'package:flutter/material.dart';
import 'mess_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isCollapsed = true;
  final Duration duration = Duration(milliseconds: 200);
  double screenheight;
  double screenwidth;
  List<String> timet = [
    'DBMS, lab',
    'DBMS, lab',
    'CAO, lecture',
    'Psychology, tutorial',
    'DAA, lab'
  ];
  PageController _controller = PageController(initialPage: 0);

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();

    for (var i = 0; i <= 4; i++) {
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
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFF12711),
                          Color(0xFFf5af19),
                        ],
                        stops: [
                          0.1,
                          0.8
                        ]),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  timet[i],
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
                    'TimeTable',
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
    Size size = MediaQuery.of(context).size;
    screenheight = size.height;
    screenwidth = size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },
              child: Text(
                'Dashboard',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 28),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/wallet');
              },
              child: Text('NU Delivery',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 28)),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/gpa');
              },
              child: Text('GPA Calculator',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 25)),
            )
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.2 * screenheight,
      bottom: isCollapsed ? 0 : 0.2 * screenwidth,
      left: isCollapsed ? 0 : 0.6 * screenwidth,
      right: isCollapsed ? 0 : -0.4 * screenwidth,
      child: Material(
        elevation: 15.0,
        borderRadius: BorderRadius.circular(20),
        child: PageView(
          controller: _controller,
          children: <Widget>[
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isCollapsed = !isCollapsed;
                            });
                          },
                          child: Icon(
                            Icons.list,
                            size: 30,
                          ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlue.withOpacity(0.5),
                      ),
                      width: isCollapsed ? 350 : 0,
                      height: isCollapsed ? 155 : 0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Things to do today!',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 25),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '1. Complete this app!',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15),
                            ),
                            Text(
                              '2. Complete OS project app!',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'For more: check the todo tab',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlue.withOpacity(0.5),
                      ),
                      width: isCollapsed ? 350 : 0,
                      height: isCollapsed ? 155 : 0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Class coming up next',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 25),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                'PSY 101: Basics of psychology',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'For more: check out the timetable on next page',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlue.withOpacity(0.5),
                      ),
                      width: isCollapsed ? 350 : 0,
                      height: isCollapsed ? 155 : 0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Coming up meal',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 25),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                'Lunch: 12:30 pm to 2:30 pm',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                'Kaddu masala, chapati, rajma, curd',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            HomePage_timeline_layout(),
            MessMenu(),
          ],
        ),
      ),
    );
  }

  SafeArea HomePage_timeline_layout() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ),
        ],
      ),
    );
  }
}
