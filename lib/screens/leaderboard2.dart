import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class Leader extends StatelessWidget {
  List<Widget> pages = [
    Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.red,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                radius: 10.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                radius: 30.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                radius: 10.0,
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(width: double.infinity,color: Colors.black26,)
      ],
    ),
    Container(
      width: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 10.0), child: Icon(Icons.search))
          ],
          title: Center(child: Text('Leaderboard')),
          bottom: TabBar(
            labelColor: kPrimaryLightColor,
            labelPadding: EdgeInsets.all(10.0),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: kOtherColor,
            ),
            tabs: [
              Text(
                'All Time',
                style: TextStyle(),
              ),
              Text(
                'This Week',
                style: TextStyle(),
              ),
              Text(
                'This Month',
                style: TextStyle(),
              ),
            ],
          ),
        ),
        body: TabBarView(children: pages),
      ),
    );
  }
}
