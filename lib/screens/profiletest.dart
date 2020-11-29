import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CircleAvatar(
          radius: 100,
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(stops: [
                  0.2,
                  1
                ], colors: [
                  Colors.red,
                  Colors.red,
                ]),
                borderRadius: BorderRadius.all(Radius.circular(100.0))),
            child: CircleAvatar(
              radius: 40.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  gradient: RadialGradient(stops: [
                    0.2,
                    1
                  ], colors: [
                    Colors.pink,
                    Colors.red,
                  ]),
                ),
                child: CircleAvatar(
                  radius: 0,
                  child: Container(
                    decoration: (BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      gradient: RadialGradient(stops: [
                        0.2,
                        1
                      ], colors: [
                        Colors.purple,
                        Colors.white,
                      ]),
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
