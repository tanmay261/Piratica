import 'package:PiraticaApp/data/data.dart';
import 'package:PiraticaApp/models/user_model.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final User user;
  MessageScreen({this.user});
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  _builderMessage(Message message, bool isMe) {
    return Container(
      color: isMe ? Theme.of(context).accentColor : Colors.blue[100],
      child: Text(message.text),
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0;)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          elevation: 0.0,
          title: Center(
              child: Text(
            widget.user.name,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          )),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                onPressed: () {})
          ],
        ),
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender.id == currentUser.id;
                        return _builderMessage(message, isMe);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
