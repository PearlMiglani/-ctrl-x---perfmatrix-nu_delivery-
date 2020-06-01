import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 590,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(350)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.8],
                      colors: [Colors.white, Color(0xFF954CFB)]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 65),
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 52,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Please login to continue',
                        style: TextStyle(fontFamily: 'Montserrat'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextBox_welcomepage(
                      title: 'Email',
                      dec: (InputDecoration(
                        suffix: Text('@st.niituniversity.in'),
                        fillColor: Colors.white.withOpacity(1),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Email',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      )),
                      obs: false,
                    ),
                    TextBox_welcomepage(
                      title: 'Password',
                      dec: InputDecoration(
                        focusColor: Colors.white,
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      ),
                      obs: true,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 75.0),
                        child: Material(
                          color: Colors.white,
                          elevation: 8,
                          borderRadius: BorderRadius.circular(30),
                          child: MaterialButton(
                            minWidth: 200,
                            height: 40,
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.black54),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Container(
                width: 35,
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'or sign in with',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(MdiIcons.google),
            ],
          ),
        ),
      ),
    );
  }
}

class TextBox_welcomepage extends StatelessWidget {
  final String title;
  final InputDecoration dec;
  final bool obs;
  TextBox_welcomepage({this.title, this.dec, this.obs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.5)),
        child: TextField(
          obscureText: obs,
          keyboardType: TextInputType.emailAddress,
          decoration: dec,
        ),
      ),
    );
  }
}
