import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class EventHistory extends StatelessWidget {
  static String id = 'EventHistory';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryLightColor,
        leading: Container(
          margin: EdgeInsets.only(left: 30.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        centerTitle: false,
        title: Text(
          'Event history',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EventCard(
              credit: true,
              imageUrl:
                  'https://footwearnews.com/wp-content/uploads/2020/11/miley-cyrus-shorts-tights.jpg?w=700&h=437&crop=1',
              name: 'Miley Cyrus',
              cost: '\$10',
              location: 'New York',
              eventName: 'Get Medicines',
              eventDescription: 'You need to get medicines from a nearby shop',
            ),
            EventCard(
              credit: false,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              location: 'California',
              eventName: 'Daily Household Chores',
              eventDescription:
                  '''You need to perform the daily household chores 
for a day''',
              cost: '\$30',
            ),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
    this.cost,
    this.name,
    this.location,
    this.imageUrl,
    this.eventName,
    this.eventDescription,
    this.credit,
  }) : super(key: key);
  final String cost;
  final bool credit;
  final String name;
  final String location;
  final String imageUrl;
  final String eventName;
  final String eventDescription;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 200.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(4.0, 4.0),
                blurRadius: 10.0,
                spreadRadius: 1.0),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                    radius: 30.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        location,
                        style: TextStyle(color: Color(0xFF858383)),
                      )
                    ],
                  ),
                ],
              ),
              credit
                  ? Text(
                      '+' + cost,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: credit ? Color(0xFF10CE00) : Color(0xFFFF0000),
                      ),
                    )
                  : Text(
                      '-' + cost,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: credit ? Color(0xFF10CE00) : Color(0xFFFF0000),
                      ),
                    )
            ]),
            Row(
              children: [
                Text(
                  eventName,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [new Text(eventDescription)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Rate',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0,
                    color: Color(0xFF1E00D6),
                  ),
                ),
                Text(
                  'Report',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0,
                    color: Color(0xFFFF0000),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
