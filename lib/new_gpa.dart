import 'package:flutter/material.dart';
import 'widgets/sub_list.dart';

class GPApage extends StatefulWidget {
  @override
  _GPApageState createState() => _GPApageState();
}

class _GPApageState extends State<GPApage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SubList(),
      ),
    );
  }
}
