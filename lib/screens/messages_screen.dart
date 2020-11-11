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
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87),
          ),
          SizedBox(height: 8.0),
          Text(
            message.text,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87),
          ),
        ],
      ),
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      decoration: BoxDecoration(
          color: isMe ? Theme.of(context).accentColor : Colors.blue[100],
          borderRadius: isMe
              ? BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0))
              : BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0))),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        msg,
        IconButton(
            icon: message.isLiked
                ? Icon(
                    Icons.favorite,
                  )
                : Icon(
                    Icons.favorite_outline,
                  ),
            iconSize: 30.0,
            color: message.isLiked ? Colors.red : Colors.blueGrey,
            onPressed: () {})
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        height: 70.0,
        color: Colors.white,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.photo),
              onPressed: () {},
              color: kPrimaryColor,
              iconSize: 25.0,
            ),
            Expanded(
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value){},
                  //input decoration with "collapsed" is used to remove the line below the text field
              decoration: InputDecoration.collapsed(hintText: 'Send a message..'),
            )),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
              color: kPrimaryColor,
              iconSize: 25.0,
            )
          ],
        ));
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
        body: GestureDetector(
          onTap: ()=>FocusScope.of(context).unfocus(),
                  child: Column(
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
                        reverse: true,
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
              _buildMessageComposer()
            ],
          ),
        ));
  }
}
