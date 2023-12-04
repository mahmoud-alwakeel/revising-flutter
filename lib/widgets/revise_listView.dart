import 'package:flutter/material.dart';

class ReviseListView extends StatelessWidget {
    ReviseListView({super.key});
  final List employee = [
    {
      "name": "wakeel",
      "age": 22
    },
    {
      "name": "ahmed",
      "age": 55
    },
    {
      "name": "aly",
      "age": 17
    },
    {
      "name": "suzan",
      "age": 50
    },
    {
      "name": "arwa",
      "age": 21
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView page'),
      ),
      body: SizedBox(
        height: 400,
        child: ListView.separated(
          separatorBuilder: (context, i) => const Divider(),
          itemCount: employee.length,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              padding: const EdgeInsets.all(12),
              color: index.isEven ? Colors.purple[400] : Colors.purple[200],
              child: Row(
                children: [
                Text('Name: ${employee[index]['name']}, ', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('Age: ${employee[index]['age'].toString()}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ]),
            );
          }),
      ),
    );
  }
}