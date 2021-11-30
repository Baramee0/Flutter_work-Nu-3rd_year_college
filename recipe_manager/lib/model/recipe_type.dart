import 'package:hive/hive.dart';
part 'recipe_type.g.dart';
// ignore: todo
//TODO : https://itnext.io/flutter-save-data-to-local-storage-with-hive-nosql-database-package-8a0de834f313

@HiveType(typeId: 0)
enum RecipeType {
  @HiveField(0)
  food,
}
