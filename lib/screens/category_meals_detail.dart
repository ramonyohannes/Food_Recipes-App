import 'package:flutter/material.dart';

import '../dummy_data.dart';

class CategoryMealsDetail extends StatelessWidget {
  //const CategoryMealsDetail({Key? key}) : super(key: key);

  static const routeName = "./Category_Meals_Screen";

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final chosenMeal = DUMMY_MEALS.firstWhere((meal) {
      return meal.id == id;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                chosenMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "INGREDIENTS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: 300,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: ListView.builder(
                itemCount: chosenMeal.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.amber,
                    child: Text(
                      chosenMeal.ingredients[index],
                    ),
                  );
                  /*   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: Colors.amber,
                          child: Text(chosenMeal.ingredients[index]),
                        ),
                        //const Divider(),
                      ],
                    ),
                  ); */
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "STEPS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: ListView.builder(
                itemCount: chosenMeal.steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("# $index"),
                          ),
                          title: Text(chosenMeal.steps[index]),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
