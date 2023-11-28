import 'package:design_practice/static_lists.dart';
import 'package:flutter/material.dart';

enum PlaceType {
  safe,
  unsafe
}

class InputPlaces extends StatefulWidget {
  const InputPlaces({super.key});

  @override
  State<InputPlaces> createState() => _InputPlacesState();
}

class _InputPlacesState extends State<InputPlaces> {

  final placeController = TextEditingController();
  bool isChecked = false;
  PlaceType placeType = PlaceType.safe;
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Places'),),
      body: Center(child:
      Column(
        children: [
          TextField(
            controller: placeController,
            decoration: const InputDecoration(
                label: Text('Enter places')
            ),
          ),

          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              const Text('Inside Dhaka')
            ],

          ),

          Row(
            children: [
              Radio<PlaceType>(
                  value: PlaceType.safe,
                  groupValue: placeType,
                  onChanged: (value) {
                    setState(() {
                      placeType = value!;
                    });
                  }),
              const Text('Safe'),
              Radio<PlaceType>(
                  value: PlaceType.unsafe,
                  groupValue: placeType,
                  onChanged: (value) {
                    setState(() {
                      placeType = value!;
                    });
                  }),
              const Text('Unsafe'),
            ],
          ),

          DropdownButton<String>(
              hint:const Text('Enter country'),
              value: country,
              items: countries.map((e) =>
                  DropdownMenuItem<String>(
                      value: e,
                      child: Text(e))).toList(),
              onChanged: (value){
                setState(() {
                  country = value!;
                });
              }),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            print(placeController.text.toString());
          },
              child: const Text('OK'))
        ],
      ),),
    );
  }
}
