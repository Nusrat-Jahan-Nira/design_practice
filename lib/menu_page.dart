
import 'package:design_practice/common_function.dart';
import 'package:design_practice/division_grid_view.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu'),),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const DivisionGridView()));
              },
              child: const Text('Division List'),
            ),
          ),
        ],
      ),
    );
  }
}
