import 'package:flutter/material.dart';

const picSource =
    'https://whc.unesco.org/uploads/thumbs/site_0798_0006-1000-627-20120827171714.jpg';
const description =
'''The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha), lies on the delta of the Ganges, Brahmaputra and Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes. The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.''';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _imageSection(),
            _headerSection(),
            _navigationSection(),
            _bodySection()
          ],
        ),
      ),
    );
  }

  Padding _bodySection() {
    return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(description),
          );
  }

  Padding _navigationSection() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navigationIconColumn(Icons.call,"CALL"),
                _navigationIconColumn(Icons.near_me,"ROUTE"),
                _navigationIconColumn(Icons.share,"SHARE"),
              ],
            ),
          );
  }

  Column _navigationIconColumn(IconData? iconData, String title) {
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
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              );
  }

  Padding _headerSection() {
    return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Sundarbans",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 5,),
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

  Image _imageSection() {
    return Image.network(
            picSource,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          );
  }
}

