import 'package:flutter/material.dart';
//import 'package:revising_everything/build_one.dart';
import 'package:revising_everything/rev_btn.dart';
import 'package:revising_everything/rev_statefull.dart';
// import 'package:revising_everything/rev_card.dart';
// import 'package:revising_everything/rev_expaned.dart';
// import 'package:revising_everything/rev_gridView.dart';
// import 'package:revising_everything/revise_column.dart';
// import 'package:revising_everything/revise_listView.dart';
// import 'package:revising_everything/revising_row.dart';
// import 'home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RevStatefull(),
    );
  }
}
