import 'package:flutter/material.dart';

class RevBottomNav extends StatefulWidget {
  const RevBottomNav({super.key});

  @override
  State<RevBottomNav> createState() => _RevBottomNavState();
}

class _RevBottomNavState extends State<RevBottomNav> {

  int selectedIndex = 0;
  List<Widget> listWidget = [
    const Text('Home Page'),
    const Text('Settings page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        onTap: (val){
          setState(() {
            selectedIndex = val;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
        ],
      ),
      body: Container(
        child: Center(child: listWidget.elementAt(selectedIndex)),
      ),
    );
  }
}