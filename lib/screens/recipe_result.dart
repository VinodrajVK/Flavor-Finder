import 'package:flavor_finder/models/recipe.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  final recipe = Recipe(
      name: 'Pasta',
      diet: 'Vegetarian',
      course: 'Main Course',
      time: 30,
      ingredients: 'Pasta, Tomato Sauce, Cheese',
      instructions: 'Boil pasta, add sauce, add cheese',
      image:
          'https://www.simplyrecipes.com/thmb/1ZKQ7J6Z6Z6Z6Z6Z6Z6Z6Z6Z6Z6=/2000x1333/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2018__01__2018-02-24-Spaghetti-Carbonara-7-1200-9b7b7b7b7b7b4b7b7b7b.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  recipe.image,
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 8.0),
                Text(
                  recipe.name,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Diet: ${recipe.diet}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Course: ${recipe.course}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Time: ${recipe.time} minutes',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Ingredients:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  recipe.ingredients,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Instructions:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  recipe.instructions,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
