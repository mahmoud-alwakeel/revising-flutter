import 'package:flutter/material.dart';

class ReviseColumn extends StatelessWidget {
  const ReviseColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cloumnn screen'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const Text('my name is weka', style: TextStyle(fontSize: 20),),
            Container(width: 200,
            height: 200,
            color: Colors.purple,
            ),
            Image.network('https://picsum.photos/300/300'),
            Image.network('https://picsum.photos/300/300'),
          ]),
        ),
      ),
    );
  }
}
