import '../model/recipe.dart';

Future<List<Recipe>> getRecipes() {
  List<Recipe> recipes = [Recipe(title: 'Lumberjack Mac')];
  return Future.delayed(Duration(seconds: 2), () => recipes);
}