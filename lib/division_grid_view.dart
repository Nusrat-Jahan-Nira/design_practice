
import 'package:design_practice/division_items.dart';
import 'package:flutter/material.dart';

class DivisionGridView extends StatelessWidget {
  const DivisionGridView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Division List')),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: divisionList.length,
          itemBuilder: (context,index)=>Card(
            color: Colors.red.shade300,
            elevation: 5,
            child: Center(
              child: Text(divisionList[index].divisionName.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          )
      ),
    );
  }
}
