import 'package:flutter/material.dart';

import '../widgets/category_screen.dart';
import '../widgets/drawer.dart';
import './favorites_page.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // const TabsScreen({Key? key}) : super(key: key);

  List<Map<String, dynamic>> pagewidgets = [
    {
      "title": "Category Page",
      "widgets": CategoryScreen(),
    },
    {
      "title": "Filter Page",
      "widgets": Favorites_Screen(),
    }
  ];

  int selectedIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pagewidgets[selectedIndex]["title"]),
      ),
      drawer: DrawerScreen(),
      body: pagewidgets[selectedIndex]["widgets"],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        backgroundColor: Colors.purple,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Filters",
          ),
        ],
      ),
    );
  }
}
