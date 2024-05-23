import 'package:flavor_finder/models/recipe.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              if (recipe.image != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    recipe.image,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              SizedBox(height: 16.0),
              Text(
                recipe.name,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
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
              SizedBox(height: 16.0),
              _buildSectionTitle('Ingredients'),
              _buildCard(
                child: Text(
                  recipe.ingredients,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 16.0),
              _buildSectionTitle('Instructions'),
              _buildCard(
                child: Text(
                  recipe.instructions,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCard({required Widget child}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
