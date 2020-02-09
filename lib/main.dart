import 'package:europa/pages/recipes.dart';
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
      title: 'Recipes!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Recipes(),
    );
  }
}
