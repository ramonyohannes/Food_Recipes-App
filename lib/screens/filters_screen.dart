import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  // const CategoryScreen({Key? key}) : super(key: key);

  static const routeName = "./FilterScreen";

  final Map<String, bool> currentFilters;
  final Function setFilters;
  FilterScreen(this.currentFilters, this.setFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool GlutenFree = false;
  bool Vegan = false;
  bool Vegetarian = false;
  bool LactoseFree = false;

  /*  @override
  void initState() {
    // TODO: implement initState
    GlutenFree = widget.currentFilters["isGlutenFree"];
    Vegan = widget.currentFilters["isVegan"];
    Vegetarian = widget.currentFilters["isVegetarian"];
    LactoseFree = widget.currentFilters["isLactoseFree"];
    super.initState();
  } */

  @override
  Widget build(BuildContext context) {
    print(widget.currentFilters["isGlutenFree"]);
    print(widget.currentFilters["isVegan"]);
    print(widget.currentFilters["isVegetarian"]);
    print(widget.currentFilters["isLactoseFree"]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters Page"),
        actions: [
          IconButton(
            onPressed: () {
              final selectedFilters = {
                "isGlutenFree": GlutenFree,
                "isVegan": Vegan,
                "isVegetarian": Vegetarian,
                "isLactoseFree": LactoseFree,
              };
              widget.setFilters(selectedFilters);
            },
            icon: const Icon(
              Icons.add,
            ),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            child: const Text(
              "Adjust your meal selection",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: const Text("IsGlutenFree"),
                  subtitle: const Text("Does not include Gluten"),
                  value: GlutenFree,
                  onChanged: (newValue) {
                    setState(() {
                      GlutenFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text("IsVegan"),
                  subtitle: const Text("Does not include Vegan"),
                  value: Vegan,
                  onChanged: (newValue) {
                    setState(() {
                      Vegan = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text("IsVegetarian"),
                  subtitle: const Text("Does not include Vegetarian"),
                  value: Vegetarian,
                  onChanged: (newValue) {
                    setState(() {
                      Vegetarian = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text("isLactoseFree"),
                  subtitle: const Text("Does not include Lactose"),
                  value: LactoseFree,
                  onChanged: (newValue) {
                    setState(() {
                      LactoseFree = newValue;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
