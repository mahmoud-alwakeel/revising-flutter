import 'package:flutter/material.dart';

class RevDrawer extends StatefulWidget {
  @override
  State<RevDrawer> createState() => _RevDrawerState();
}

class _RevDrawerState extends State<RevDrawer> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Drawer'),
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(14),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            'assets/images/weka.JPG',
                            fit: BoxFit.fill,
                          )),
                    ),
                    const Expanded(
                      child: ListTile(
                        title: Text('Weka'),
                        subtitle: Text('weka@gmail.com'),
                      ),
                    ),
                  ],
                ),
                const ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
                const ListTile(
                  title: Text('about us'),
                  leading: Icon(Icons.home),
                ),
                const ListTile(
                  title: Text('settings'),
                  leading: Icon(Icons.home),
                ),
                const ListTile(
                  title: Text('contact us'),
                  leading: Icon(Icons.home),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          //   child: MaterialButton(
          //     onPressed: (){
          //       scaffoldKey.currentState!.openDrawer();
          //     },
          //      child: const Text('open Drawer'),),
          // ),
          child: Text('drawer'),
        ));
  }
}
