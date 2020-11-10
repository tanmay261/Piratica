
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: drawerTextColor,
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Miroslava Savitskaya',
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                  Text('Active Status',
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 15.0, 0.0, 3.0),
                      child: Row(
                        children: [
                          Icon(
                            element['icon'],
                            color: kPrimaryColor,
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            child: Text(
                              element['title'],
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, element['onTap']);
                            },
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Feedback',
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Sign out',
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
