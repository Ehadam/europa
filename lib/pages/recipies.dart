import 'package:europa/components/recipe_list.dart';
import 'package:flutter/material.dart';

class Recipies extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipies!'),
      ),
      body: RecipeList()
    );
  }
}