import 'package:europa/pages/home.dart';
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
      title: 'My Appy Thyme',
      theme: ThemeData(
        primaryColor: Color(0xFF46078E),
      ),
      home: Home(),
    );
  }
}
