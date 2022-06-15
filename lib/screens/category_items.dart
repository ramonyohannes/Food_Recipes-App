import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';

import './category_meals_screen.dart';

import '../dummy_data.dart';

class CategoryItems extends StatelessWidget {
  //const CategoryItems({Key? key}) : super(key: key);
  static const route = "./CategoryItems";

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final title = args["title"];
    final id = args["id"];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: ListView(
        children: [
          ...categoryMeals.map((meal) {
            return CategoryMealsScreen(
              id: meal.id,
              title: meal.title,
              imageUrl: meal.imageUrl,
              duration: meal.duration,
              complexity: meal.complexity,
              affordability: meal.affordability,
            );
          }).toList()
        ],
      ),
    );
  }
}
