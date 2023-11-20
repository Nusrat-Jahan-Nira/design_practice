
import 'package:design_practice/tourist_place_items.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {


  const ListViewPage({super.key});

  // List<TouristPlaceList> touristPlaceList = [] ;

  //listview dynamically
  //List<String> items = List.generate(1000, (index) => 'Items ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tourists Place List')),
      body:
      // ListView(
      //   //listview dynamically
      //  // children: items.map((e) => Text(e)).toList(),
      // ),
      ListView.builder(
        itemCount: touristPlaceList.length,
        itemBuilder: (context,index)=> GestureDetector(
          onTap: null,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              tileColor: index.isEven ? Colors.grey: Colors.grey[300] ,
              title: Text('${index+1}. ${touristPlaceList[index].name}'),
              subtitle: Text(touristPlaceList[index].shortDescription.toString()),

            ),
          ),
        ),
      )
    );
  }
}
