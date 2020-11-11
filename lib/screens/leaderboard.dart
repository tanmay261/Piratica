import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Leaderboard extends StatelessWidget {
  static String id = 'Leaderboard';
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                boxShadow: shadowList),
            height: 340.0,
            width: 400.0,
            child: new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    top: 20,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 30.0,
                        ),
                        SizedBox(width: 70.0),
                        Text(
                          'Leaderboard',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        SizedBox(width: 90.0),
                        Icon(
                          Icons.search,
                          size: 30.0,
                        )
                      ],
                    )),
                Positioned(
                  // left: 150.0,
                  top: 100.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                    radius: 70.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                new Positioned(
                  // left: 180.0,
                  top: 210.0,
                  child: CircleAvatar(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Color(0xFF646464),
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: 20.0,
                    backgroundColor: kPrimaryLightColor,
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 150.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://www.cricbuzz.com/a/img/v1/152x152/i1/c180329/shane-watson.jpg',
                    ),
                    radius: 45.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                new Positioned(
                  left: 50.0,
                  top: 220.0,
                  child: CircleAvatar(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Color(0xFF646464),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: 15.0,
                    backgroundColor: Color(0xFFffe05d),
                  ),
                ),
                Positioned(
                  right: 20.0,
                  top: 150.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                    ),
                    radius: 45.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                new Positioned(
                  right: 50.0,
                  top: 220.0,
                  child: CircleAvatar(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Color(0xFF646464),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: 15.0,
                    backgroundColor: Color(0xFFfff8cd),
                  ),
                ),
                Positioned(
                    top: 270.0,
                    left: 30.0,
                    child: Row(
                      children: [
                        Text(
                          'Shane Watson',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          'Ratan Tata',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Text(
                          'Bill Gates',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                      ],
                    )),
                Positioned(
                    top: 285.0,
                    left: 40.0,
                    child: Row(
                      children: [
                        Text(
                          '1700 hrs',
                          style: TextStyle(),
                        ),
                        SizedBox(
                          width: 75.0,
                        ),
                        Text('1800 hrs'),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text('1550 hrs'),
                      ],
                    )),
                Positioned(
                    top: 45.0,
                    child: SvgPicture.asset(
                      'assets/crown.svg',
                      height: 70.0,
                    )),
              ],
            ),
          ),
          Container(
            height: 300.0,
            width: double.infinity,
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.amber,
            child: Column(
              children: [
                PeopleList(),
                Divider(
                  height: 10.0,
                  thickness: 2.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PeopleList extends StatelessWidget {
  const PeopleList({
    this.imageUrl,
    this.name,
    Key key,
  }) : super(key: key);

  final String name;
  final String imageUrl;
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        RowItems(name: 'Azim Premji', time: '1300', index: '4'),
        SizedBox(
          height: 10.0,
        ),
        RowItems(name: 'Warren Buffet', time: '1255', index: '5'),
        RowItems(name: 'Lalji', time: '1100', index: '6'),
        RowItems(name: 'Hello', time: '900', index: '7')
      ],
    );
  }
}

class RowItems extends StatelessWidget {
  const RowItems({
    this.index,
    this.name,
    this.time,
    Key key,
  }) : super(key: key);

  final String index;
  final String name;
  final String time;
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(index),
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://static.toiimg.com/thumb/msid-74928672,width-1200,height-900,resizemode-4/.jpg'),
        ),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 15.0),
            ),
            Text(time),
          ],
        ),
        SizedBox(
          width: 2.0,
        ),
        SizedBox(
          width: 5.0,
        ),
        SizedBox(
          width: 5.0,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text('Some Info'),
      ],
    );
  }
}
