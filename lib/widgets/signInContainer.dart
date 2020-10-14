import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class SignInContainer extends StatelessWidget {
  @override
  final Color ccolor;
  final Color tcolor;
  final String text;
  final String assetLocation;

  SignInContainer(this.ccolor, this.text, this.tcolor, this.assetLocation);
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
        height: 50.0,
        width: 600.0,
        color: kPrimaryColor,//Color(0xFF6c63ff)
        padding: EdgeInsets.only(left: 15.0),
        child: Row(children: [
          Image.asset(
            
            assetLocation,
            height: 40.0,
          ),
          SizedBox(width: 30.0),
          Text(
            text,
            style: TextStyle(fontSize: 18.0, color: Colors.black, letterSpacing: 1.5),
          ),
        ]),
        
      ),
    );
  }
}
