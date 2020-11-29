import 'package:PiraticaApp/screens/chatScreen/chatscreen.dart';
import 'package:PiraticaApp/screens/drawer_screen.dart';

import 'package:flutter/material.dart';

class ChatHomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ChatHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DrawerScreen(),
        ChatScreen(),
      ]),
    );
  }
}
