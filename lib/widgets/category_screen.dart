import 'package:flutter/material.dart';

import '../screens/category_items.dart';

import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  //const CategoryScreen({Key? key}) : super(key: key);

  static const routeName = "./CategoryScreens";

  void CatItem(BuildContext context, String id, String title) {
    Navigator.of(context).pushNamed(CategoryItems.routeName, arguments: {
      "id": id,
      "title": title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        //crossAxisSpacing: 5,
        //mainAxisSpacing: 5,
      ),
      itemCount: DUMMY_CATEGORIES.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => CatItem(
            context,
            DUMMY_CATEGORIES[index].id,
            DUMMY_CATEGORIES[index].title,
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              //  border: Border.all(width: 1),
              gradient: LinearGradient(
                colors: [
                  DUMMY_CATEGORIES[index].color.withOpacity(0.7),
                  DUMMY_CATEGORIES[index].color,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              //color: categories[index].color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                DUMMY_CATEGORIES[index].title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
