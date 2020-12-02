import 'package:PiraticaApp/screens/chatScreen/chatscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: AnimatedContainer(
        height: double.infinity,
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(isDrawerOpen ? -0.5 : 0),
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            }),
                    Column(
                      children: [
                        Text('Location'),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: kPrimaryColor,
                            ),
                            Text('Ukraine'),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    Text('Search Events'),
                    Icon(Icons.settings)
                  ],
                ),
              ),
              EventCard(
                imageUrl:
                    'https://footwearnews.com/wp-content/uploads/2020/11/miley-cyrus-shorts-tights.jpg?w=700&h=437&crop=1',
                name: 'Miley Cyrus',
                cost: '\$10',
                location: 'New York',
                eventName: 'Get Medicines',
                eventDescription:
                    'You need to get medicines from a nearby shop',
              ),
              EventCard(
                cost: '\$100',
                location: 'Vellore',
                name: 'Marry Williams',
                eventName: 'Keep parents busy',
                eventDescription:
                    '''You need to make three meals of the day and keep them busy by talking to them for a week''',
                imageUrl:
                    'https://cdn2.atlantamagazine.com/wp-content/uploads/sites/4/2013/08/Williams_author-photo_credit-Jake-Stangel-696x696.jpg',
              ),
              EventCard(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
                name: 'John Hopper',
                location: 'California',
                eventName: 'Daily Household Chores',
                eventDescription:
                    '''You need to perform the daily household chores for a day''',
                cost: '\$30',
              ),
            ],
          ),
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
  }) : super(key: key);
  final String cost;
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
              Text(
                cost,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF10CE00),
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
              children: [Expanded(child: new Text(eventDescription))],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Text(
                    'CHAT',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                      color: Color(0xFF1E00D6),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
