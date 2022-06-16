import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
  // const CategoryScreen({Key? key}) : super(key: key);

  static const routeName = "./FilterScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters Page"),
      ),
      drawer: DrawerScreen(),
      body: const Center(
        child: Text("data"),
      ),
    );
  }
}
