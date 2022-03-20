import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:neighborhood_watch/screens/home/add.dart';
import 'package:neighborhood_watch/screens/home/chat.dart';
import 'package:neighborhood_watch/screens/home/home_page.dart';
import 'package:neighborhood_watch/screens/home/map.dart';
import 'package:neighborhood_watch/screens/profile.dart';

class MyLandingPage extends StatefulWidget {
  @override
  _MyLandingPageState createState() => _MyLandingPageState();
}
class _MyLandingPageState extends State<MyLandingPage> {
  int selectedPage = 2;
  final _pageOptions = [ProfilePage(), MapPage(),HomePage(), ChatPage(), AddPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neighbourhood Watch'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.person, title: 'Profile'),
          TabItem(icon: Icons.map, title: 'Map'),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.chat_bubble, title: 'Chat'),
          TabItem(icon: Icons.add, title: 'Add'),
        ],
        initialActiveIndex: 2,//optional, default as 0
        onTap: (int i ){
          setState(() {
            selectedPage = i;
          });
        },
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}