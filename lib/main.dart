import 'package:flutter/material.dart';

import 'widgets/category_screen.dart';
import './screens/category_items.dart';
import './screens/category_meals_detail.dart';
import 'screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './dummy_data.dart';
import './models/meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Map<String, bool> filters = {
      "isGlutenFree": false,
      "isVegan": false,
      "isVegetarian": false,
      "isLactoseFree": false,
    };
    List<Meal> avalilableMeals = DUMMY_MEALS;

    void setFilters(Map<String, bool> newFilters) {
      setState(() {
        filters = newFilters;

        avalilableMeals = DUMMY_MEALS.where((meal) {
          if (filters["isGlutenFree"] && !meal.isGlutenFree) {
            return false;
          }
        }).toList();
      });
    }

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white10,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: TabsScreen(),
      routes: {
        CategoryItems.routeName: (_) => CategoryItems(),
        CategoryMealsDetail.routeName: ((_) => CategoryMealsDetail()),
        FilterScreen.routeName: (_) => FilterScreen(filters, setFilters),
        CategoryScreen.routeName: (_) => CategoryScreen(),
      },
    );
  }
}
