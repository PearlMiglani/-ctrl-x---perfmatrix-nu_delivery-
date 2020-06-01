//import 'package:flutter/material.dart';
//
//List<Widget> sub = [];
//int nosub = 4;
//int a;
//List<int> credits = [4, 4, 4, 3];
//List<bool> strongsub = [false, false, false, false];
//
//class GPApage extends StatefulWidget {
//  @override
//  _GPApageState createState() => _GPApageState();
//}
//
//class _GPApageState extends State<GPApage> {
//  void togglecheck(bool checkstate, int s) {
//    setState(() {
//      strongsub[s] = checkstate;
//    });
//  }
//
//  void initState() {
//    super.initState();
//    putTT();
//  }
//
//  void putTT() {
//    for (var i = 0; i < nosub; i++) {
//      bool ischecked = strongsub[i];
//
//      sub.add(
//        Padding(
//          padding: const EdgeInsets.only(left: 20.0, top: 15),
//          child: ListTile(
//            title: Text(
//              'Sub $i',
//              style: TextStyle(fontSize: 20),
//            ),
//            trailing: Checkbox_gpa(ischecked, i, togglecheck),
//          ),
//        ),
//      );
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: SingleChildScrollView(
//        child: SafeArea(
//          child: Column(
//            children: <Widget>[
//              Column(
//                children: sub,
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class Checkbox_gpa extends StatelessWidget {
//  @override
//  final bool ischecked;
//  final int s;
//  final Function toggle;
//
//  Checkbox_gpa(this.ischecked, this.s, this.toggle);
//  Widget build(BuildContext context) {
//    return Checkbox(
//      value: ischecked,
//      onChanged: toggle,
//    );
//  }
//}
