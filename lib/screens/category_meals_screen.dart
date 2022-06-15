import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  //const CategoryMealsScreen({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final double duration;
  final Complexity complexity;
  final Affordability affordability;

  CategoryMealsScreen({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return "Simple";
        break;
      case Complexity.Challenging:
        return "Challenging";
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      default:
        return "Unknown";
    }
  }

  String get affordibilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return "affordable";
        break;
      case Affordability.Luxurious:
        return "luxury";
        break;
      case Affordability.Pricey:
        return "pricey";
        break;
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(imageUrl),
              ),
              Positioned(
                bottom: 20,
                right: 2,
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.all(10),
                  color: Colors.black54,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            // padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(Icons.schedule),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(complexityText),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.work,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("$duration min"),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.attach_money,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(affordibilityText),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
