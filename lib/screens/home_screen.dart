import 'package:PiraticaApp/widgets/constants.dart';
import 'package:PiraticaApp/widgets/signInContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  static String id = 'Welcome Screen';

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.all(40.0),
          child: Stack(children: [
            Positioned(
                child: SvgPicture.asset(
              'assets/social.svg',
              height: size.height * 0.45,
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome !',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'How would you like to Sign Up ?',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Container(
                  
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 100.0),
                  // padding: EdgeInsets.only(top: 10.0),

                  height: 400.0,
                  width: double.infinity,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignInContainer(Colors.blue, 'Continue with Email',
                          Colors.white, 'assets/email.png'),
                      SizedBox(height: 30.0),
                      SignInContainer(Colors.black, 'Continue with Google',
                          Colors.white, 'assets/google.png'),
                      SizedBox(height: 30.0),
                      SignInContainer(Colors.green, 'Continue with Apple',
                          Colors.white, 'assets/apple.png'),
                      SizedBox(height: 30.0),
                      Text(
                        'Already have an Account ?',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      GestureDetector(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'Sign In');
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
