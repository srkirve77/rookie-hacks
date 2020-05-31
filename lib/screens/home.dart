import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/stores.json"),
              builder: (context, snapshot) {
                // HEREEEEEE
                var myData = json.decode(snapshot.data.toString());

                return new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Image.asset((myData[index]["image"]),
                                fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: ListTile(
                              title: Text(myData[index]["storeName"]),
                              subtitle: Text(myData[index]["location"] +
                                  ", " +
                                  myData[index]["hours"]),
                              trailing: FlatButton(
                                  color: (myData[index]["isJoined"]
                                      ? Colors.blue
                                      : Theme.of(context).primaryColor),
                                  textColor: Colors.white,
                                  padding: EdgeInsets.all(6),
                                  splashColor: Theme.of(context).accentColor,
                                  child: Text("Join Line",
                                      style: TextStyle(fontSize: 15)),
                                  onPressed: () {
                                    setState(
                                      () {
                                        myData[index]["isJoined"] =
                                            !myData[index]["isJoined"];
                                      },
                                    );
                                  }),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(17, 0, 20, 20),
                                child: Text(
                                    (myData[index]["currentLine"]).toString() +
                                        " shoppers in line",
                                    style: TextStyle(color: Colors.blue)),
                              ),
                            ],
                          )
                        ],
                      ),
                      color: Colors.grey[5],
                    );
                  },
                  itemCount: myData == null ? 0 : myData.length,
                );
              }),
        ));
  }
}
