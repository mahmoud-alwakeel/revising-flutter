import 'package:flutter/material.dart';

class RevisingRow extends StatelessWidget {
  const RevisingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cloumnn screen'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          
          children: [
            Container(width: 100, height: 100, color: Colors.black,),
            Container(width: 100, height: 100, color: Colors.blue,),
            Container(width: 100, height: 100, color: Colors.red,),
            Container(width: 100, height: 100, color: Colors.green,),
            Container(width: 100, height: 100, color: Colors.purple,),
          ],
        ),
      ),
    );
  }
}