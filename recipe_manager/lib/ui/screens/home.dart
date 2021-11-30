import 'package:flutter/material.dart';
import 'package:recipe_manager/model/recipe.dart';
import 'package:recipe_manager/ui/widgets/recipe_card.dart';
import 'package:recipe_manager/utils/store.dart';
import 'package:recipe_manager/model/recipe_type.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Recipe> recipes = getRecipes();
  List<String> userFavorites = getFavoritesIDs();

  late final Box<Recipe> favouriteRecipes;
  void _handleFavoritesListChanged(Recipe recipe) {
    setState(() {
      if (favouriteRecipes.containsKey(recipe.id)) {
        favouriteRecipes.delete(recipe.id);
      } else {
        favouriteRecipes.put(recipe.id, recipe);
      }
    });
  }

  @override
  void initState() {
    favouriteRecipes = Hive.box('favourites');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Padding _buildRecipes(List<Recipe> recipesList) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: recipesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return new RecipeCard(
                    recipe: recipesList[index],
                    inFavorites: userFavorites.contains(recipesList[index].id),
                    onFavoriteButtonPressed: _handleFavoritesListChanged,
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

    const double _iconSize = 20.0;
// ignore: todo
//TODO : https://api.flutter.dev/flutter/material/AppBar-class.html

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: [
                Tab(icon: Icon(Icons.restaurant, size: _iconSize)),
                Tab(icon: Icon(Icons.star, size: _iconSize)),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            children: [
              _buildRecipes(recipes
                  .where((recipe) => recipe.type == RecipeType.food)
                  .toList()),
              _buildRecipes(recipes
                  .where((recipe) => favouriteRecipes.containsKey(recipe.id))
                  .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
