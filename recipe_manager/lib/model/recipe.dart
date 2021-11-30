import 'package:hive/hive.dart';
import 'package:recipe_manager/model/recipe_type.dart';
part 'recipe.g.dart';
// ignore: todo
//TODO: https://itnext.io/flutter-save-data-to-local-storage-with-hive-nosql-database-package-8a0de834f313

@HiveType(typeId: 1)
class Recipe {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final RecipeType type;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final List<String> ingredients;

  @HiveField(4)
  final List<String> preparation;

  @HiveField(5)
  final String imageURL;

  Recipe({
    required this.id,
    required this.type,
    required this.name,
    required this.ingredients,
    required this.preparation,
    required this.imageURL,
  });

  @override
  // ignore: hash_and_equals
  int get hashCode => id.hashCode;

  @override
  String toString() => '{ id: $id }';
}
