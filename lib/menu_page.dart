
import 'package:design_practice/division_grid_view.dart';
import 'package:design_practice/input_places.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const DivisionGridView()));
              },
              child: const Text('Division List'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const InputPlaces()));
              },
              child: const Text('Input places'),
            ),
          ],
        ),
      ),
    );
  }
}
