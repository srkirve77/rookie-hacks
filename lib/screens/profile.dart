import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("My Profile Page"),
        ],
      ),
    ));
  }
}
