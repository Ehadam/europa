import 'package:europa/pages/recipies.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipies!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Recipies(),
    );
  }
}