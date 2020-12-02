import 'package:PiraticaApp/responsive/size_config.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class SignInContainer extends StatelessWidget {
  final Color ccolor;
  final Color tcolor;
  final String text;
  final String assetLocation;
  static double tm = SizeConfig.textMultiplier;
  SignInContainer(this.ccolor, this.text, this.tcolor, this.assetLocation);
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: drawerTextColor, borderRadius: BorderRadius.circular(20.0)),
        height: 7.2 * tm,
        width: 86 * tm,
        //Color(0xFF6c63ff)
        padding: EdgeInsets.only(left: 2.5 * tm),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            assetLocation,
            height: 4.33 * tm,
          ),
          SizedBox(width: 2.5 * tm),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 2.5 * tm,
                  color: kPrimaryColor,
                  letterSpacing: 0.21 * tm),
            ),
          ),
        ]),
      ),
    );
  }
}

// import 'package:PiraticaApp/responsive/size_config.dart';
// import 'package:PiraticaApp/widgets/constants.dart';
// import 'package:flutter/material.dart';

// class SignInContainer extends StatelessWidget {
//   final Color ccolor;
//   final Color tcolor;
//   final String text;
//   final String assetLocation;
//   static double tm = SizeConfig.textMultiplier;
//   SignInContainer(this.ccolor, this.text, this.tcolor, this.assetLocation);
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         decoration: BoxDecoration(
//             color: drawerTextColor, borderRadius: BorderRadius.circular(20.0)),
//  height: 8*tm,
//         width: 86*tm,
//         //Color(0xFF6c63ff)
//         padding: EdgeInsets.only(left: 15.0),
//         child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Expanded(
//                       child: Image.asset(
//               assetLocation,
//               height: 30.0,
//             ),
//           ),

//           Expanded(
//                       child: Text(
//               text,
//               style: TextStyle(
//                   fontSize: 16.0, color: kPrimaryColor, letterSpacing: 1.5),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
