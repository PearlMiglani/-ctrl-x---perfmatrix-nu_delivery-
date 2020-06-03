import 'package:flutter/material.dart';

class gpa_calc extends StatelessWidget {
  List<bool> goodats = [];
  double gpa; //target gpa, student enters
  int sum1; //sum of all credits
  double total;
  double tA = 0;
  double tC = 0;
  double tB = 0;
  double total1 = 0;
  List<String> strongsub = [];
  List<int> credits = [];
  List<String> subjects = [];

  gpa_calc(this.goodats, this.credits, this.gpa, this.subjects) {
    sum1 = 0;
    for (var i = 0; i < goodats.length; i++) {
      sum1 = sum1 + credits[i];
    }
    total = gpa * sum1;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Text(
                  calc(),
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String calc() {
    int flag = 0;
    while (flag == 0) {
      for (var i = 0; i < 5; i++) {
        if (goodats[i] == true) {
          tA = tA + (credits[i] * 10);
          strongsub.add(subjects[i]);
        } else {
          tC = tC + (credits[i] * 6);
          tB = tB + (credits[i] * 8);
        }
      }
      total1 = tA;
      if (total1 + tC >= total) {
        flag = 1;
        return ('You are all set, get an A in your strong subject(s):\n\n$strongsub\n\n And a minimum C in the rest'); //Print strong subjects; //Print the rest subjects
      } else if (gpa == 10) {
        return ('Get an A grade in every subject out there!');
      } else {
        int t3 = 0;
        int t2 = 0;
        List<int> case2 = [];
        for (var i = 0; i < 5; i++) {
          t2 = 0;
          if (goodats[i] == false) {
            t3 += credits[i] * 8;
            case2.add(credits[i]);
            for (var j = i + 1; j < 5; j++) {
              if (goodats[j] == false) {
                t2 += credits[j] * 6;
              }
            }
          }

          if (total1 + t2 + t3 >= total) {
            flag = 1;
            return ('You are all set, get an A in your strong subject(s):\n\n$strongsub\n\nGet a minimum of B in your $case2 credit course(s). '); //Print strong subs
          }
        }
        //case3
        if (total1 + tB < total) {
          int t5 = 0;
          int t4 = 0;
          for (var i = 0; i < 5; i++) {
            List<int> case3 = [];
            t4 = 0;
            if (goodats[i] == false) {
              t5 += credits[i] * 10;
              case3.add(credits[i]);
              for (var j = i + 1; j < 5; j++) {
                if (goodats[j] == false) {
                  t4 += credits[j] * 8;
                }
              }
            }

            if (total1 + t4 + t5 >= total) {
              flag = 1;
              return ('You are all set, get an A in your strong subjects\n\n$strongsub\n\n Get a minimum of A in $case3 credit course(s) and a B if any subject is left.'); //Print strong subs
            }
          }
        }
      }
    }
  }
}
