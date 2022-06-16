import 'dart:ui';

import 'package:flutter/material.dart';

class Favorites_Screen extends StatelessWidget {
  //const Favorites_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*   appBar: AppBar(
        title: Text("Favorites"),
      ), */
      body: Center(
        child: const Text(
          "You have no any Favorites, Try adding some",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
