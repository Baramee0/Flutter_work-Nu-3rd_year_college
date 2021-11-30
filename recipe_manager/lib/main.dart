import 'package:flutter/material.dart';
import 'package:recipe_manager/app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipe_manager/model/recipe.dart';
import 'package:recipe_manager/model/recipe_type.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(RecipeAdapter());
  Hive.registerAdapter(RecipeTypeAdapter());
  await Hive.openBox<Recipe>('favourites');
  runApp(
    new Recipes(),
  );
}
