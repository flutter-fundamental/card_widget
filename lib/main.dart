import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_circle, "akun"),
              buildCard(Icons.account_box, "account box"),
              buildCard(Icons.adb, "serangga peliharaan")
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 9,
      color: Colors.orangeAccent,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(iconData),
            color: Colors.yellowAccent,
          ),
          Text(text)
        ],
      ),
    );
  }
}
