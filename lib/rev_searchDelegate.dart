import 'dart:ffi';

import 'package:flutter/material.dart';

class RevSearchDelegate extends StatefulWidget {
  const RevSearchDelegate({super.key});

  @override
  State<RevSearchDelegate> createState() => _RevSearchDelegateState();
}

class _RevSearchDelegateState extends State<RevSearchDelegate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search delegate'),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearch());
          }, icon: const Icon(Icons.search),),
        ],
      ),
      body: Container(),
    );
  }
}

class CustomSearch extends SearchDelegate {  

  List suggestedNames = [
  'esraa',
  'mahmoud',
  'ahmed',
  'alaa',
  'wakeel',
  'mohamed',
  'mohanad',
  'hany',
];

List? filteredList;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = "";
      }, icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
      return IconButton(onPressed: (){
        close(context, null);
      }, icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.grey[200],
      child: Text('$query', style: TextStyle(fontSize: 16),));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: suggestedNames.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              query = suggestedNames[index];
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${suggestedNames[index]}',style: const TextStyle(fontSize: 16)),
              )),
          );
        },
      );
    } else {
      filteredList = suggestedNames.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filteredList!.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              query = suggestedNames[index];
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${filteredList![index]}', style: const TextStyle(fontSize: 16)),
              ),
            ),
          );
    }
      );
    }
  }

}