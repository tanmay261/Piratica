import 'package:PiraticaApp/widgets/category_selector.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:PiraticaApp/widgets/favourite_contacts.dart';
import 'package:PiraticaApp/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  double xOffset = 0;

  double yOffset = 0;

  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: double.infinity,
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          leading: isDrawerOpen
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
          title: Center(
            child: Text(
              'Chats',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          elevation: 0.0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () {})
          ],
        ),
        body: Column(
          children: [
            CategorySelector(),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    FavouriteContacts(),
                    RecentChats(),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Theme.of(context).buttonColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
