import 'package:PiraticaApp/data/data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
              children:[ Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.greenAccent,
                  width: double.infinity,
                  height: 250.0,
                ),
                Container(
                  height: 500.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 100.0, 0, 0),
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80'))),
                ),
                Text(
                  'Albert Morsin',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Vellore , INDIA',
                  style: TextStyle(letterSpacing: 1.0, color: Colors.grey),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Supreme Commander',
                  style: TextStyle(color: Colors.grey),
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
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          'People Helped',
                          style: TextStyle(
                            color: Colors.grey,
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
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          'Recommendations',
                          style: TextStyle(
                            color: Colors.grey,
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
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      'Stories',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          fontFamily: 'SansitaSwashed'),
                    )
                  ],
                )
              ],
            ),
          ],
        )],
      ),
    );
  }
}
