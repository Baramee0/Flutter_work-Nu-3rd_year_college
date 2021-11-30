import 'package:flutter/material.dart';
import 'package:recipe_manager/model/recipe.dart';
import 'package:recipe_manager/ui/widgets/recipe_image.dart';

class DetailScreen extends StatefulWidget {
  final Recipe recipe;
  final bool inFavorites;

  DetailScreen(this.recipe, this.inFavorites);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    // "Unmount" the controllers:
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerViewIsScrolled) {
          return <Widget>[
            // ignore: todo
            //TODO: https://api.flutter.dev/flutter/material/SliverAppBar-class.html
            SliverAppBar(
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RecipeImage(widget.recipe.imageURL),
                  ],
                ),
              ),
              expandedHeight: 210.0,
              pinned: true,
              floating: true,
              elevation: 2.0,
              forceElevated: innerViewIsScrolled,
              bottom: TabBar(
                labelColor: Colors.black,
                tabs: <Widget>[
                  Tab(text: "Preparation"),
                  Tab(text: "Step"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            IngredientsView(widget.recipe.ingredients),
            PreparationView(widget.recipe.preparation),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

class StateModel {}

class IngredientsView extends StatelessWidget {
  final List<String> ingredients;

  IngredientsView(this.ingredients);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[];
    ingredients.forEach((item) {
      children.add(
        new Row(
          children: <Widget>[
            new Icon(Icons.done),
            new SizedBox(width: 5.0),
            new Text(item),
          ],
        ),
      );
      // Add spacing between the lines:
      children.add(
        new SizedBox(
          height: 5.0,
        ),
      );
    });
    return ListView(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 75.0),
      children: children,
    );
  }
}

class PreparationView extends StatelessWidget {
  final List<String> preparationSteps;

  PreparationView(this.preparationSteps);

  @override
  // ignore: override_on_non_overriding_member
  void initState() {}

  @override
  Widget build(BuildContext context) {
    List<Widget> textElements = <Widget>[];
    preparationSteps.forEach((item) {
      textElements.add(
        Text(item),
      );
      // Add spacing between the lines:
      textElements.add(
        SizedBox(
          height: 10.0,
        ),
      );
    });
    return ListView(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 75.0),
      children: textElements,
    );
  }
}
