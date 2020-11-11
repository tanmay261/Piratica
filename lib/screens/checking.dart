import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(
        padding: const EdgeInsets.all(8.0),
        height: 500.0,
        width: 500.0,
        // alignment: FractionalOffset.center,
        child: new Stack(
          //alignment:new Alignment(x, y)
          children: <Widget>[
            new Icon(Icons.monetization_on,
                size: 36.0, color: const Color.fromRGBO(218, 165, 32, 1.0)),
            new Positioned(
              left: 20.0,
              child: new Icon(Icons.monetization_on,
                  size: 36.0, color: const Color.fromRGBO(218, 165, 32, 1.0)),
            ),
            new Positioned(
              left: 40.0,
              child: new Icon(Icons.monetization_on,
                  size: 36.0, color: const Color.fromRGBO(218, 165, 32, 1.0)),
            )
          ],
        ),
      ),
    );
  }
}
