import 'package:flutter/material.dart';
import 'sub_tile.dart';

class SubList extends StatefulWidget {
  @override
  _SubListState createState() => _SubListState();
}

class _SubListState extends State<SubList> {
  int nos = 5;
  List<bool> goodats = [false, false, false, false, false];
  List<Widget> tiles = [];

  void initState() {
    super.initState();
    getList();
    getClickButton();
  }

  void getList() {
    for (var i = 0; i < nos; i++) {
      tiles.add(SubTile('Sub ${i + 1}', goodats, i));
    }
  }

  void getClickButton() {
    tiles.add(Padding(
      padding: EdgeInsets.only(left: 60.0, right: 60, top: 10),
      child: RaisedButton(
        child: Text('Click me!'),
        onPressed: () {
          print(goodats);
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tiles,
    );
  }
}
