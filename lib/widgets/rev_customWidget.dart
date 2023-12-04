import 'package:flutter/material.dart';
import 'package:revising_everything/widgets/home_screen.dart';

class RevCustomWidget extends StatelessWidget {
  const RevCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.red,
        child: Column(children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: CustomCard(
                title: 'weka',
                subTitle: 'weka@gmail.com',
                date: '3/12/2023',
                networkPicture: 'https://picsum.photos/100/100',
                ),
          ),
              CustomCard(
              title: 'aly',
              subTitle: 'aly@gmail.com',
              date: '4/12/2023',
              networkPicture: 'https://picsum.photos/120/120',
              ),
        ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String date;
  final String networkPicture;
  const CustomCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.date,
      required this.networkPicture});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    networkPicture,
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
              child: ListTile(
                title: Text(title),
                subtitle: Text(subTitle),
                trailing: Text(date),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
