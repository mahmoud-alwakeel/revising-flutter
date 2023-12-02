import 'package:flutter/material.dart';

class RevCard extends StatelessWidget {
  const RevCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card screen'),
      ),
      body:  Column(
        children: [
        const Card(
          child: ListTile(
            leading: Text('leading'),
            title: Text('title'),
            subtitle: Text('subtitle'),
            trailing: Text('trailing'),
          ),
        ),
        const Icon(Icons.access_alarm, size: 100, color: Colors.black,),
        IconButton(
          onPressed: (){print("object");},
          iconSize:  100,
          icon: const Icon(Icons.ac_unit_sharp,), )
      ],
      ),
    );
  }
}
