
import 'package:PiraticaApp/screens/leaderboard.dart';

import 'package:PiraticaApp/screens/nav_screens.dart';
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
        SignInPage.id:(context)=>SignInPage(),
        ProfilePage.id:(context)=>ProfilePage(),
        Leaderboard.id:(context)=>Leaderboard(),
        NavScreen.id:(context)=>NavScreen(),
      },
      initialRoute:NavScreen.id,
    );
  }
}