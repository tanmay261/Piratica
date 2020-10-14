
import 'package:PiraticaApp/screens/login_screen.dart';
import 'package:PiraticaApp/screens/profile_page.dart';
import 'package:PiraticaApp/screens/signIn_page.dart';
import 'package:PiraticaApp/screens/home_screen.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPrimaryColor,
        brightness: Brightness.light,

        primarySwatch: Colors.blue,
    
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
       HomeScreen.id :(context)=>HomeScreen(),
        'Sign In':(context)=>SignInPage(),
        'Profile':(context)=>ProfilePage(),
      },
      initialRoute:HomeScreen.id,
    );
  }
}