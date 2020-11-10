import 'package:PiraticaApp/screens/drawer_screen.dart';
import 'package:PiraticaApp/screens/eventsScreen/events.dart';
import 'package:flutter/material.dart';



class EventHomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<EventHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DrawerScreen(),
        EventScreen(),

      ]),
    );
  }
}
