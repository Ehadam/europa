import 'package:europa/components/heading.dart';
import 'package:europa/model/recipe.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {

  RecipeCard(this.recipe);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.only(left: 12, top: 18, bottom: 18),
        alignment: Alignment.centerLeft,
        child: Column(
          children: <Widget>[Heading(title: recipe.title,)],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}