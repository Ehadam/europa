import 'package:europa/components/recipe_list.dart';
import 'package:europa/model/recipe.dart';
import 'package:flutter/material.dart';

class Recipies extends StatelessWidget {
  void _addRecipe(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
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
                  TextField(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('SAVE',
                              style: TextStyle(color: Colors.blue)),
                          onPressed: () {},
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
      body: RecipeList(<Recipe>[
        Recipe(title: 'Test recipe'),
        Recipe(title: 'Another recipe')
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addRecipe(context),
      ),
    );
  }
}
