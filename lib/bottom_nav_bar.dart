import 'package:flutter/material.dart';
import 'package:rookiehacks/screens/notifications.dart';
import 'package:rookiehacks/screens/home.dart';
import 'package:rookiehacks/screens/profile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  final List<Widget> _children = [Notifications(), Home(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.notifications),
              title: new Text('Notifications'),
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: new Text('Home'),
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              title: new Text('My Profile'),
            )
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}