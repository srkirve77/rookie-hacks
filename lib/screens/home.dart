import 'package:flutter/material.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/stores.json"),
              builder: (context, snapshot) {
                // Decode JSON
                var myData = json.decode(snapshot.data.toString());

                return new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(myData[index]["storeName"]),
                          new Text(myData[index]["location"]),
                        ],
                      ),
                    );
                  },
                  itemCount: myData == null ? 0 : myData.length,
                );
              }),
        ));
  }
}
