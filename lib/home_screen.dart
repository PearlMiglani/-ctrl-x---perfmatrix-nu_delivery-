import 'package:flutter/material.dart';
import 'new_gpa.dart';
import 'mess_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
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
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage_home(),
          HomePage_timeline_layout(),
          MessMenu(),
          GPApage(),
        ],
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

SafeArea HomePage_home() {
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
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.lightBlue.withOpacity(0.5),
            ),
            width: 350,
            height: 155,
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
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '1. Complete this app!',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
                  ),
                  Text(
                    '2. Complete OS project app!',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'For more: check the todo tab',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
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
            width: 350,
            height: 155,
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
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'PSY 101: Basics of psychology',
                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'For more: check out the timetable on next page',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
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
            width: 350,
            height: 155,
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
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Lunch: 12:30 pm to 2:30 pm',
                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Kaddu masala, chapati, rajma, curd',
                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 18),
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
  );
}
//Scaffold(
//body: SafeArea(
//child: Column(
//children: <Widget>[
//Row(
//mainAxisAlignment: MainAxisAlignment.start,
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.only(top: 12.0, left: 15.0),
//child: Icon(
//Icons.list,
//size: 30,
//),
//),
//],
//),
//Text(
//'Welcome\n\'Student name\'',
//textAlign: TextAlign.center,
//style: TextStyle(
//fontSize: 22,
//fontFamily: 'Montserrat',
//),
//),
//Expanded(
//child: Container(
//color: Colors.white.withOpacity(0),
//child: Column(
//mainAxisAlignment: MainAxisAlignment.start,
//crossAxisAlignment: CrossAxisAlignment.start,
//children: ttlist,
//),
//),
//)
//],
//),
//),
//)
