import 'package:flutter/material.dart';

class SubList extends StatefulWidget {
  @override
  _SubListState createState() => _SubListState();
}

class _SubListState extends State<SubList> {
  int nos = 4;
  List<bool> goodats = [false, false, false, false];
  List<Widget> tiles = [];
  var list;

  void initState() {
    super.initState();
    list = new List<int>.generate(nos, (i) => i);
  }

//  void getList() {
//    for (var i = 0; i < nos; i++) {
//      tiles.add(SubTile('Sub ${i + 1}'));
//    }
//  }
//
//  void getClickButton() {
//    tiles.add(Padding(
//      padding: EdgeInsets.only(left: 60.0, right: 60, top: 10),
//      child: RaisedButton(
//        child: Text('Click me!'),
//        onPressed: () {},
//      ),
//    ));
//  }

  @override
  Widget build(BuildContext context) {
    list.forEach((i) {
      tiles.add(
        new Column(
          children: <Widget>[
            new ListTile(
              title: Text('Sub ${i + 1}'),
              trailing: Checkbox(
                value: goodats[i],
                onChanged: (newval) {
                  setState(() {
                    goodats[i] = newval;
                  });
                },
              ),
            ),
          ],
        ),
      );
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: tiles,
        ),
      ),
    );

//    return ListView(
//      children: tiles.forEach((i) {}),
//    );
  }
}

//class SubTile extends StatefulWidget {
//  String title;
//  SubTile(this.title);
//  @override
//  _SubTileState createState() => _SubTileState();
//}
//
//class _SubTileState extends State<SubTile> {
////  String title;
////  _SubTileState(this.title);
//  void checkboxtoggle(bool checkboxState) {
//    setState(() {
//      isChecked = checkboxState;
//    });
//  }
//
//  bool isChecked = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        ListTile(
//          title: Text(
//            widget.title,
//          ),
//          trailing: checkbox_gpa(isChecked, checkboxtoggle),
//        ),
//      ],
//    );
//  }
//}
//
//class checkbox_gpa extends StatelessWidget {
//  final bool checkboxState;
//  final Function checkboxt;
//  checkbox_gpa(this.checkboxState, this.checkboxt);
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      value: checkboxState,
//      onChanged: checkboxt,
//    );
//  }
//}
