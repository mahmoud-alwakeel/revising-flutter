import 'package:flutter/material.dart';

class RevButton extends StatelessWidget {
  const RevButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('data'),),
      floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: const Icon(Icons.add, color: Colors.white,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: MaterialButton(
          onPressed: (){
            print('weka');
            }, 
            color: Colors.purple[800],
            minWidth: 120,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Text('press here'),
            ),
      ),
    );
  }
}