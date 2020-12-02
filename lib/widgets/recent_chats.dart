import 'package:PiraticaApp/data/data.dart';
import 'package:PiraticaApp/responsive/size_config.dart';
import 'package:PiraticaApp/screens/messages_screen.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  static double tm = SizeConfig.textMultiplier;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MessageScreen(user: chat.sender)));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                    decoration: BoxDecoration(
                        color:
                            chat.unread ? Colors.blue[100] : kPrimaryLightColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                              radius: 30.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.sender.name,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    chat.text,
                                    style: TextStyle(
                                        color: Colors.blueGrey[300],
                                        fontSize: 12.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              chat.time,
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            chat.unread
                                ? Container(
                                    height: 25.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[400],
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: tm * 1.2),
                                    ))
                                : Text(''),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
