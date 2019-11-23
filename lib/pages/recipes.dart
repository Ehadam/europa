import 'package:europa/components/recipe_card.dart';
import 'package:europa/model/recipe.dart';
import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {

  Recipes(this.recipes, this.addRecipe);

  final List<Recipe> recipes;
  final Function addRecipe;

  void _addRecipe(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // Need to dispose of this?
          final controller = TextEditingController();
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Recipe Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextField(controller: controller,),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('SAVE',
                              style: TextStyle(color: Colors.blue)),
                          onPressed: () {
                            addRecipe(Recipe(title: controller.text));
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipies!'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) => RecipeCard(recipes[index])
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addRecipe(context),
      ),
    );
  }
}
