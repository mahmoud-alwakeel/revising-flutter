import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Screen'),
        
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            width: 500,
            height: 400,
            alignment: Alignment.center,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            child: const Text(
              'Welcome to My Home!',
              style: TextStyle(
                fontSize: 30.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Image.network('https://picsum.photos/300/300')
          Image.asset('assets/images/weka.JPG',
          fit: BoxFit.cover,
          width: 300,
          height: 350,)
        ],
      ),
    );
  }
}
