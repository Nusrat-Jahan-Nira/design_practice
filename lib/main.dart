import 'package:design_practice/division_grid_view.dart';
import 'package:design_practice/menu_page.dart';
import 'package:design_practice/tourist_place_detail_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}


