import 'package:flutter/material.dart';
import 'package:recipe_manager/model/recipe.dart';
import 'package:recipe_manager/ui/screens/detail.dart';
import 'package:hive/hive.dart';

class RecipeCard extends StatefulWidget {
  final Recipe recipe;
  final bool inFavorites;
  final Function onFavoriteButtonPressed;

  RecipeCard(
      {@required required this.recipe,
      @required required this.inFavorites,
      @required required this.onFavoriteButtonPressed});

  @override
  _RecipeCardState createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  late final Box<Recipe> favouriteSwitchIcon;
  @override
  void initState() {
    favouriteSwitchIcon = Hive.box('favourites');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RawMaterialButton _buildFavoriteButton() {
      return RawMaterialButton(
        constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
        onPressed: () => widget.onFavoriteButtonPressed(widget.recipe),
        child: favouriteSwitchIcon.containsKey(widget.recipe.id) == true
            ? Icon(Icons.star)
            : Icon(Icons.star_border),
        elevation: 2.0,
        fillColor: Colors.white,
        shape: CircleBorder(),
      );
    }

    Padding _buildTitleSection() {
      return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.recipe.name,
            ),
            SizedBox(height: 10.0),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              new DetailScreen(widget.recipe, widget.inFavorites),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.network(
                      widget.recipe.imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: _buildFavoriteButton(),
                    top: 2.0,
                    right: 2.0,
                  ),
                ],
              ),
              _buildTitleSection(),
            ],
          ),
        ),
      ),
    );
  }
}
