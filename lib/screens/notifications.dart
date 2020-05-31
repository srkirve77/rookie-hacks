import 'package:firebasepushnotifications/widget/messaging_widget.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  final String appTitle = 'Qsafe Notification';
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: appTitle,
    color: Colors.blue,
    home: MainPage(appTitle: appTitle),
  );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(appTitle),
    ),
    body: MessagingWidget(),
  );
}
