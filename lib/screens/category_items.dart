import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  //const CategoryItems({Key? key}) : super(key: key);
  static const route = "./CategoryItems";

  final String id;
  final String title;
  CategoryItems(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(id),
      ),
    );
  }
}
