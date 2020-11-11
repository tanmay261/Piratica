import 'package:PiraticaApp/widgets/signInContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'Welcome Screen';

  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.all(40.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Positioned(
              //     child: SvgPicture.asset(
              //   'assets/social.svg',
              //   width: size.width*0.50,
              //   colorBlendMode: BlendMode.difference,

              // )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 70.0,
                  ),
                  Column(
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
