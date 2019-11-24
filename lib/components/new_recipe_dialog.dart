import 'package:flutter/material.dart';
import 'package:europa/model/recipe.dart';

class NewRecipeDialog extends StatelessWidget {
  NewRecipeDialog({this.onSave});

  final Function onSave;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
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
            TextField(
              controller: controller,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text('SAVE', style: TextStyle(color: Colors.blue)),
                    onPressed: () {
                      onSave(Recipe(title: controller.text));
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
  }
}
