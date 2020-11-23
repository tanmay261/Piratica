import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class Lead1 extends StatefulWidget {
  @override
  _Lead1State createState() => _Lead1State();
}

class _Lead1State extends State<Lead1> {
  List<String> time = ['All Time', 'This Week', 'This Month'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
        elevation: 0.0,
      ),
      body: Container(
          height: 200.0,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0))),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Text(time[index]);
            },
            itemCount: time.length,
          )),
    );
  }
}
