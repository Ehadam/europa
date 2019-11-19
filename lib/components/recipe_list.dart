import 'package:europa/components/recipe_card.dart';
import 'package:europa/model/recipe.dart';
import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {

  final List<Recipe> recipies = [Recipe(title: 'Test recipe'), Recipe(title: 'Another recipe')];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipies.length,
      itemBuilder: (BuildContext context, int index) => RecipeCard(recipies[index]));
  }
}