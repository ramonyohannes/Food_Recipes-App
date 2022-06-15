import 'package:flutter/material.dart';

import 'widgets/category_screen.dart';
import './screens/category_items.dart';
import './screens/category_meals_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white10,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Meals App',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white10,
          elevation: 0,
        ),
        body: CategoryScreen(),
      ),
      routes: {
        CategoryItems.routeName: (_) => CategoryItems(),
        CategoryMealsDetail.routeName: ((_) => CategoryMealsDetail()),
      },
    );
  }
}
