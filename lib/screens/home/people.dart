import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("People Page",style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}