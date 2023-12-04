import 'package:flutter/material.dart';

class RevGridView extends StatelessWidget {
  RevGridView({super.key});
    final List employees = [
    {"name": "wakeel", "age": 22},
    {"name": "ahmed", "age": 55},
    {"name": "aly", "age": 17},
    {"name": "suzan", "age": 50},
    {"name": "arwa", "age": 21},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView screen'),),
      body: SizedBox(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            //mainAxisSpacing: 10, 
            crossAxisSpacing: 10),
          itemCount: employees.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 100,
              color: Colors.purple[600],
              child: Text(employees[index]['name'], textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),),
            );
          }
          ),
      ),
    );
  }
}