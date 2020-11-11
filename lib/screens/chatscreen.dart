
import 'package:PiraticaApp/widgets/category_selector.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:PiraticaApp/widgets/favourite_contacts.dart';
import 'package:PiraticaApp/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {}),
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
    );
  }
}
