import 'package:flutter/material.dart';

import '../screens/category_items.dart';

import '../data_list.dart';

class CategoryScreen extends StatelessWidget {
  //const CategoryScreen({Key? key}) : super(key: key);

  void CatItem(BuildContext context, String id, String title) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return CategoryItems(id, title);
        },
      ),
    );
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
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => CatItem(
            context,
            categories[index].id,
            categories[index].title,
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: categories[index].color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                categories[index].title,
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
