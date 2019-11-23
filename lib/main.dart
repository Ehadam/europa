import 'package:europa/model/recipe.dart';
import 'package:europa/pages/recipes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Recipe> recipes = <Recipe>[
    Recipe(title: 'Test recipe'),
    Recipe(title: 'Another recipe')
  ];

  void addRecipe(Recipe newRecipe) {
    setState(() {
      recipes.add(newRecipe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipies!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Recipes(recipes, addRecipe),
    );
  }
}
