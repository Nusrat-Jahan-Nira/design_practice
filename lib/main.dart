import 'package:flutter/material.dart';

const picSource =
    'https://i.pinimg.com/originals/55/51/4d/55514dfd272080a0f6f0e2074205aa80.jpg';
const description =
    'Mauris rhoncus dolor ut pretium lacinia. Donec a gravida dui. Duis a tellus in enim pellentesque sagittis. Sed quis nunc ornare, ullamcorper dolor ac, posuere erat. Integer efficitur rutrum tortor, non bibendum eros laoreet at. Vestibulum aliquet eros vel libero semper ultrices. Maecenas aliquam, risus vel tristique hendrerit, nisi leo dictum nibh, a feugiat eros libero ac magna. Proin vulputate orci vitae gravida suscipit. Vivamus vitae nisl vel augue varius dapibus mattis vel dui. Vestibulum venenatis faucibus blandit. Vestibulum eget mauris ut ex luctus iaculis. Nullam ac quam eu quam congue efficitur vestibulum a elit.';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.network(
              picSource,
              height: 300,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oeschinen Lake Campground",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Kandersteg, Switzerland",
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        "41",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "CALL",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.route_outlined,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ROUTE",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "SHARE",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 2.0,left: 16.0,right: 16.0),
              child: Text(description),
            )
          ],
        ),
      ),
    );
  }
}
