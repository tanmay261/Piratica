import 'dart:ui';

import 'package:PiraticaApp/components/rounded_input_field.dart';
import 'package:PiraticaApp/components/rounded_password_field.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  static String id = 'Sign In';
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                // Container(
                //   color: Colors.black,
                //   padding: EdgeInsets.all(30.0),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       // Row(children: [
                //       //   Text(
                //       //     'Welcome Back !',
                //       //     style: TextStyle(
                //       //         fontWeight: FontWeight.bold,
                //       //         color: kPrimaryColor,
                //       //         fontSize: 35.0),
                //       //   ),
                //       // ]),
                //     ],
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.fromLTRB(0, 0.0, 0, 0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // SizedBox(
                            //   width: 15.0,
                            // ),
                            Container(
                              margin: EdgeInsets.only(top: 20.0, bottom: 30.0),
                              child: Text(
                                'Sign In ',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 30.0,
                      ),
                      RoundedInputField(
                        hintText: 'Your Email',
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      RoundedPasswordField(
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: kPrimaryColor,
                                width: 2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'Profile');
                        },
                        child: Text('LOGIN'),
                        color: kPrimaryLightColor,
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                            onTap: () {
                              print('User forgot the password');
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onTap: () {
                              print('Sign up page opened');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
