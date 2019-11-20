import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:europa/components/recipe_list.dart';
import 'package:europa/components/recipe_card.dart';
import 'package:europa/model/recipe.dart';

void main() {
  testWidgets('should render one recipe card for each recipe in list', (WidgetTester tester) async {
    final List<Recipe> recipes = <Recipe>[Recipe(title: 'test recipe'), Recipe(title: 'another test')];
    await tester.pumpWidget(MaterialApp(home: RecipeList(recipes)));

    expect(find.byType(RecipeCard), findsNWidgets(recipes.length));
  });
}
