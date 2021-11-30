import 'package:flutter/material.dart';

import 'package:recipe_manager/model/recipe.dart';

class RecipeTitle extends StatelessWidget {
  final Recipe recipe;
  final double padding;

  RecipeTitle(this.recipe, this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            recipe.name,
            style: Theme.of(context).textTheme.headline6,
          ),
          // Empty space:
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
