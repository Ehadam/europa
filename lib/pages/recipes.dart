import 'package:europa/components/new_recipe_dialog.dart';
import 'package:europa/components/recipe_card.dart';
import 'package:europa/model/recipe.dart';
import 'package:europa/pages/get_recipes.dart';
import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  void _showRecipeDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return NewRecipeDialog(
            onSave: () {},
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes!'),
      ),
      body: FutureBuilder<List<Recipe>>(
          future: getRecipes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) =>
                      RecipeCard(snapshot.data[index]));
            } else {
              return Text('No data yet!');
            }
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showRecipeDialog(context),
      ),
    );
  }
}
