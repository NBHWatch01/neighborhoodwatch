import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("Map",style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}