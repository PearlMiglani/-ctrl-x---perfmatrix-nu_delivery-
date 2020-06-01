import 'package:flutter/material.dart';

class SubTile extends StatefulWidget {
  String title;
  List<bool> goodats;
  int s;
  SubTile(this.title, this.goodats, this.s);

  @override
  _SubTileState createState() => _SubTileState();
}

class _SubTileState extends State<SubTile> {
//  String title;
//  _SubTileState(this.title);
  void checkboxtoggle(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
      widget.goodats[widget.s] = checkboxState;
      print(widget.goodats);
    });
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            widget.title,
          ),
          trailing: checkbox_gpa(isChecked, checkboxtoggle),
        ),
      ],
    );
  }
}

class checkbox_gpa extends StatelessWidget {
  final bool checkboxState;
  final Function checkboxt;
  checkbox_gpa(this.checkboxState, this.checkboxt);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: checkboxt,
    );
  }
}
