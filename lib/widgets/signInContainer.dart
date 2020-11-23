import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class SignInContainer extends StatelessWidget {
  final Color ccolor;
  final Color tcolor;
  final String text;
  final String assetLocation;

  SignInContainer(this.ccolor, this.text, this.tcolor, this.assetLocation);
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: drawerTextColor, borderRadius: BorderRadius.circular(20.0)),
        height: 50.0,
        width: 600.0,
        //Color(0xFF6c63ff)
        padding: EdgeInsets.only(left: 15.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            assetLocation,
            height: 30.0,
          ),
          SizedBox(width: 18.0),
          Text(
            text,
            style: TextStyle(
                fontSize: 16.0, color: kPrimaryColor, letterSpacing: 1.5),
          ),
        ]),
      ),
    );
  }
}
