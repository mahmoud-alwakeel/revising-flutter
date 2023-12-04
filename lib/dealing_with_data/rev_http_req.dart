import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class RevhttpReq extends StatefulWidget {
  const RevhttpReq({super.key});

  @override
  State<RevhttpReq> createState() => _RevhttpReqState();
}

class _RevhttpReqState extends State<RevhttpReq> {

  List titles = [];
  bool isLoading = false;

  var url = 'https://jsonplaceholder.typicode.com/posts';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http requests'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(onPressed: () async{
              setState(() {
                isLoading = true;
              });
              var response =  await get(Uri.parse(url));
              var responseBody = jsonDecode(response.body);
              //print(responseBody[0]['title']);
              titles.addAll(responseBody);
              isLoading = false;
              setState(() {
                
              });
            },
            color: Colors.purple[600],
            minWidth: 200,
             child: const Text('Get Data', style: TextStyle(color: Colors.white),),),
          ),
          if (isLoading) const Center(child:  CircularProgressIndicator()),
           ...List.generate(titles.length, (index) => Card(
            child: ListTile(
              title: Text('title: ${titles[index]['title']}'),
              subtitle: Text('body: ${titles[index]['body']}'),
              ),
              ))
        ],
      ),
    );
  }
}