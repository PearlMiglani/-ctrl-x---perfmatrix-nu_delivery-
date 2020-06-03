import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  @override
  _OrderpageState createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  String _shopname;
  String _item;
  String _qty;
  String _address;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildshopname() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Shop Name', labelStyle: TextStyle(color: Colors.black)),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Shop Name is required';
        }
        return null;
      },
      onSaved: (String value) {
        _shopname = value;
      },
    );
  }

  Widget _builditem() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Item Name', labelStyle: TextStyle(color: Colors.black)),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Item Name is required';
        }
      },
      onSaved: (String value) {
        _item = value;
      },
    );
  }

  Widget _buildqty() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Quantity', labelStyle: TextStyle(color: Colors.black)),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Quantity is required';
        }
      },
      onSaved: (String value) {
        _qty = value;
      },
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Address ', labelStyle: TextStyle(color: Colors.black)),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is required';
        }
      },
      onSaved: (String value) {
        _shopname = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildshopname(),
                  _builditem(),
                  _buildqty(),
                  _buildaddress(),
                  SizedBox(
                    height: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF1FA2FF),
                                      Color(0xFF12D8FA),
                                      Color(0xFFA6FFCB)
                                    ],
                                    stops: [
                                      0.1,
                                      0.5,
                                      0.8
                                    ])),
                            child: Center(child: Text('Back'))),
                      ),
                      FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            return;
                          }
                          _formKey.currentState.save();
                          print(_shopname);
                        },
                        child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF1FA2FF),
                                      Color(0xFF12D8FA),
                                      Color(0xFFA6FFCB)
                                    ],
                                    stops: [
                                      0.1,
                                      0.5,
                                      0.8
                                    ])),
                            child: Center(child: Text('Send'))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
