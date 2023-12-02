import 'package:flutter/material.dart';

class BuildOneScreen extends StatelessWidget {
  const BuildOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Build one'),
        backgroundColor: Colors.purple[200],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              border: Border.all(width: 2),
            ),
            child: const Text(
              'strawberry pavlova',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              border: Border.all(width: 2),
            ),
            child: const Text(
              "some more tet that cantake multiple lines on the mobile screen, i'm preparing something BIG",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.blue[200],
              border: Border.all(width: 2),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                SizedBox(
                  width: 20,
                ),
                Text('170 Reviews')
              ],
            ),
          ),
          
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blue[200],
              border: Border.all(width: 2),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      size: 40,
                    ),
                    Text(
                      'prep:',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '25 min',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      size: 40,
                    ),
                    Text(
                      'cook:',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '1hour',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      size: 40,
                    ),
                    Text(
                      'feeds:',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4-6',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
