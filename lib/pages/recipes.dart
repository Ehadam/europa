import 'package:europa/components/new_recipe_dialog.dart';
import 'package:europa/components/recipe_card.dart';
import 'package:europa/model/recipe.dart';
import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  List<Recipe> recipes = <Recipe>[
    // TODO(ehadam): Populate this with api call
    Recipe(title: 'Test recipe'),
    Recipe(title: 'Another recipe')
  ];

  void addRecipe(Recipe newRecipe) {
    setState(() {
      recipes.add(newRecipe);
    });
  }

  void _showRecipeDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return NewRecipeDialog(
            onSave: addRecipe,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes!'),
      ),
      body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (BuildContext context, int index) =>
              RecipeCard(recipes[index])),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showRecipeDialog(context),
      ),
    );
  }
}
