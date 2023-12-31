

import 'package:flutter/material.dart';

const picSource =
    'https://whc.unesco.org/uploads/thumbs/site_0798_0006-1000-627-20120827171714.jpg';
const description =
'''The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha), lies on the delta of the Ganges, Brahmaputra and 
Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes. The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.''';


class TouristPlaceDetailsPage extends StatelessWidget {
  const TouristPlaceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _imageSection(context),
            _headerSection(),
            _navigationSection(),
            _bodySection()
          ],
        ),
      ),
    );
  }

  Widget _bodySection() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(description),
    );
  }

  Widget _navigationSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navigationIconColumn(Icons.call, "CALL"),
          _navigationIconColumn(Icons.near_me, "ROUTE"),
          _navigationIconColumn(Icons.share, "SHARE"),
        ],
      ),
    );
  }

  Widget _navigationIconColumn(IconData? iconData, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.blue,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }

  Widget _headerSection() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "The Sundarbans",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Khulna Division, Bangladesh",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Text(
            "9.5",
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _imageSection(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Image.network(
          picSource,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 30.0,
          left: 10.0,
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,
              color: Colors.black,
            fill: 0.2),
          ),
        ),
        const Positioned.fill(
          child: Center(
            child: Text(
              'Sundarbans',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: -20,
          left: 10,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 50,
                color: Colors.amber,
              ),
            ),
          ),
        )
      ],
    );
  }
}
