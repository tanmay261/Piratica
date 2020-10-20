import 'dart:ui';

import 'package:PiraticaApp/components/rounded_input_field.dart';
import 'package:PiraticaApp/components/rounded_password_field.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:PiraticaApp/widgets/signInContainer.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  // Image.asset(
                  //   'assets/google.png',
                  //   height: 600.0,
                  //   width: double.infinity,
                  // ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 50.0),
                        ),
                        Text(
                          'Back !',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 50.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    
                    margin: EdgeInsets.only(left: 270.0),
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      color: kPrimaryColor,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'Profile');
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
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
                          height: 30.0,
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
