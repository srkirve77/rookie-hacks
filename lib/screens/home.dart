import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import '../store.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Store> _stores = List<Store>();
  List<Store> _storesForDisplay = List<Store>(); // filtered down list of stores

  Future<List<Store>> fetchStores() async {
    var url =
        'https://raw.githubusercontent.com/alaynamnguyen/storesforrookiehacks/master/db.json';
    var response = await http.get(url);

    var stores = List<Store>();

    if (response.statusCode == 200) {
      var storesJson = json.decode(response.body);
      for (var storeJson in storesJson) {
        stores.add(Store.fromJson(storeJson));
      }
    }
    return stores;
  }

  @override
  void initState() {
    fetchStores().then((value) {
      setState(() {
        _stores.addAll(value);
        _storesForDisplay = _stores;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index == 0 ? _searchBar() : _listItem(index - 1);
              },
              itemCount:
                  _storesForDisplay == null ? 0 : _storesForDisplay.length + 1,
            )));
  }

  _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search for a store',
        ),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            _storesForDisplay = _stores.where((store) {
              var storeName = store.storeName.toLowerCase();
              return storeName.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  // individual card function
  _listItem(index) {
    return Card(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Image.asset((_storesForDisplay[index].image),
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: ListTile(
              title: Text(_storesForDisplay[index].storeName),
              subtitle: Text(_storesForDisplay[index].location +
                  ", " +
                  _storesForDisplay[index].hours),
              trailing: FlatButton(
                  color: (_storesForDisplay[index].isJoined
                      ? Colors.blue
                      : Theme.of(context).primaryColor),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8),
                  splashColor: Theme.of(context).accentColor,
                  child: Text(
                      _storesForDisplay[index].isJoined
                          ? "Leave Line"
                          : "Join Line",
                      style: TextStyle(fontSize: 15)),
                  onPressed: () {
                    setState(
                      () {
                        _storesForDisplay[index].isJoined =
                            !_storesForDisplay[index].isJoined;
                        if (_storesForDisplay[index].isJoined) {
                          _storesForDisplay[index].currentLine += 1;
                        } else {
                          _storesForDisplay[index].currentLine -= 1;
                        }
                      },
                    );
                  }),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(17, 0, 20, 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        (_storesForDisplay[index].currentLine).toString() +
                            " shoppers in line",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 210,
                        child: Text(
                            "Wait Time: " +
                                _storesForDisplay[index].waitTime.toString() +
                                " minutes",
                            textAlign: TextAlign.end),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
      color: Colors.grey[5],
    );
  }
}
