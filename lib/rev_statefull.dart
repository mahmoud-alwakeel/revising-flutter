import 'package:flutter/material.dart';

class RevStatefull extends StatefulWidget{
  const RevStatefull({super.key});

  @override
  State<RevStatefull> createState() => _RevStatefullState();
}

class _RevStatefullState extends State<RevStatefull> {

  int counter = 0;

  bool rated= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('statefull widget'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Text('counter: $counter'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: (){
                  setState(() {
                    counter++;
                  });
                },
                minWidth: 160,
                color: Colors.purple[800],
                 child: const Text('Add counter'),),
                MaterialButton(onPressed: (){
                  setState(() {
                    counter--;
                  });
                }, 
                minWidth: 200,
                color: Colors.purple[800],
                child: const Text('decrement counter'),)
              ],
            ),
            Column(
              children: [
                rated ? const Icon(Icons.star, size: 40,) : const Icon(Icons.star_border_outlined, size: 40,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      rated = !rated;
                    });
                  },
                  child: const Text("rate", style: TextStyle(
                    fontSize: 24
                  ),)),
              ],
            ),
          ]),
      ),
      );
  }
}