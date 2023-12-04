import 'package:flutter/material.dart';

class RevExpanded extends StatelessWidget {
  const RevExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded screen')),
      body: Container(
        child: Row(
          children: [
            Expanded(child: Container(color: Colors.black, height: 100,)),
            Expanded(child: Container(color: Colors.blue, height: 100,)),
            Expanded(child: Container(color: Colors.red, height: 100,)),
          ],
        ),
      ),
    );
  }
}