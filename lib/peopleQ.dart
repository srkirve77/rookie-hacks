import 'package:flutter/material.dart';
//import 'package:photo_view/photo_view.dart';

void main() => runApp(ShowPeopleInQueue());

class ShowPeopleInQueue extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.lightBlue),
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('List of People'),
      ),
      body: new ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return Container(
            height: 130,
            child: Card(
//                color: Colors.blue,
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                             child: Icon(
                              Icons.account_circle ,
                              color: Colors.black,
                              size: 100,
                             )
                      ),
                    ),
                  ),
                  GestureDetector(

                    child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: Chip(
                          label: Text('@anonymous'),
                          shadowColor: Colors.white,
                          backgroundColor: Colors.lightBlue,
                          elevation: 10,
                          autofocus: true,
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
