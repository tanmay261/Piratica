import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static String id = 'Profile';
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: drawerTextColor,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  // Container(
                  //   color: drawerTextColor,
                  //   width: double.infinity,
                  //   height: 250.0,
                  // ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80'))),
                      ),
                      Text(
                        'Albert Morsin',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Vellore , INDIA',
                        style: TextStyle(
                            letterSpacing: 1.0, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Supreme Commander',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                '1,280',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              Text(
                                'People Helped',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '380',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              Text(
                                'Recommendations',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 12.0),
                            child: Text(
                              'Stories',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                  fontFamily: 'SansitaSwashed'),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'See All',
                            ),
                          )
                        ],
                      ),
                      // ListView(
                      //   return Container();
                      // ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
