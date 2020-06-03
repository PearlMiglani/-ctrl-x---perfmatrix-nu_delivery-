import 'package:flutter/material.dart';
import 'sub_tile.dart';
import 'package:cao_project_nustudents/calc.dart';

class SubList extends StatefulWidget {
  @override
  _SubListState createState() => _SubListState();
}

class _SubListState extends State<SubList> {
  int nos = 5;
  List<bool> goodats = [false, false, false, false, false];
  List<int> credits = [3, 4, 4, 4, 4];
  List<Widget> tiles = [
    Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 10),
      child: Center(
        child: Text(
          'GPA Calculator',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 32),
        ),
      ),
    ),
    Center(child: Text('Select your strong subjects')),
  ];
  List<String> subjects = [
    'Psychology',
    'Operating Systems',
    'Computer architecture and organisation',
    'Database Management Systems',
    'Theory of Computation'
  ];
  double desiredGPA;

  void initState() {
    super.initState();
    getList();
    getTextfield();
    getClickButton();
  }

  void getList() {
    for (var i = 0; i < nos; i++) {
      tiles.add(SubTile(subjects[i], goodats, i));
    }
  }

  void getTextfield() {
    tiles.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(hintText: 'Enter your desired GPA'),
        onChanged: (value) {
          desiredGPA = double.parse(value);
        },
      ),
    ));
  }

  void getClickButton() {
    tiles.add(Padding(
      padding: EdgeInsets.only(left: 60.0, right: 60, top: 10),
      child: RaisedButton(
        child: Text('Calculate'),
        onPressed: () {
          print(goodats);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      gpa_calc(goodats, credits, desiredGPA, subjects)));
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: tiles,
        ),
      ),
    );
  }
}
