import 'package:flutter/material.dart';

class RevRadio extends StatefulWidget {
  const RevRadio({super.key});
  @override
  State<RevRadio> createState() => _RevRadioState();
}

class _RevRadioState extends State<RevRadio> {

  String? country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('radio list tile'),
        backgroundColor: Colors.purple[200],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text('Choose your country', style: TextStyle(fontSize: 20),),
            RadioListTile(title: const Text('Egypt'), value: "Egypt", groupValue: country, onChanged: (val){
              setState(() {
                country = val;
              });
            }),
            RadioListTile(title: const Text('Usa'), value: "Usa", groupValue: country, onChanged: (val){
              setState(() {
               country = val;
              });
            }),
            RadioListTile(title: const Text('Ksa'), value: "Ksa", groupValue: country, onChanged: (val){
              setState(() {
                country = val;
              });
            }),
            const SizedBox(height: 30,),
            country != null ? Text('Your country is: $country') : const Text('Your country is: '),
          ]
          ),
      ),
    );
  }
}