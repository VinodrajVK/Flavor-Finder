import 'package:flavor_finder/data/recipes.dart';
import 'package:flavor_finder/models/recipe.dart';
import 'package:flavor_finder/screens/recipe_result.dart';
import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  void Function() _recipeDetail(BuildContext context, Recipe recipe) {
    return () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => RecipeScreen(recipe: recipe)));
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: _recipeDetail(context, recipe!),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (recipe.image != null)
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        child: Image.network(
                          recipe.image,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        recipe.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
