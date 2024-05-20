class Recipe {
  String name;
  String image;
  String diet;
  String course;
  int time;
  String ingredients;
  String instructions;
  Recipe({
    required this.name,
    required this.image,
    required this.diet,
    required this.course,
    required this.time,
    required this.ingredients,
    required this.instructions,
  });
}

final recipe1 = Recipe(
  name: 'Spaghetti Carbonara',
  image:
      'https://www.simplyrecipes.com/thmb/1ZKJ9Q6Z6Z6Z6Z6Z6Z6Z6Z6Z6Z6=/2000x1333/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2018__01__2018-02-24-Spaghetti-Carbonara-7-1200-9b7b7b7b7b7b4b7b7b7b.jpg',
  diet: 'Non-Vegetarian',
  course: 'Main Course',
  time: 30,
  ingredients: 'Spaghetti, Eggs, Pancetta, Parmesan Cheese, Olive Oil',
  instructions:
      '1. Cook spaghetti according to package instructions. 2. In a large skillet, cook pancetta until crispy. 3. In a bowl, whisk together eggs and cheese. 4. Add cooked spaghetti to skillet and toss with pancetta. 5. Remove from heat and stir in egg mixture. 6. Serve immediately.',
);
