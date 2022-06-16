import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters_screen.dart';
import 'package:mealapp/widgets/category_screen.dart';
import '../widgets/category_screen.dart';
import './category_screen.dart';

class DrawerScreen extends StatelessWidget {
  //const Drawer({Key? key}) : super(key: key);

  void CategoryScreenpage(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white54,
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Meals",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
              child: ListTile(
                leading: Icon(Icons.category),
                title: Text("Categories"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(FilterScreen.routeName);
              },
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Filters"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
