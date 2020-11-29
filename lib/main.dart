import 'package:PiraticaApp/screens/event_history.dart';
import 'package:PiraticaApp/screens/leaderboard.dart';

import 'package:PiraticaApp/screens/nav_screens.dart';
import 'package:PiraticaApp/screens/profile_page.dart';
import 'package:PiraticaApp/screens/signIn_page.dart';
import 'package:PiraticaApp/screens/home_screen.dart';
import 'package:PiraticaApp/screens/transaction_history.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
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
        HomeScreen.id: (context) => HomeScreen(),
        SignInPage.id: (context) => SignInPage(),
        ProfilePage.id: (context) => ProfilePage(),
        Leaderboard.id: (context) => Leaderboard(),
        NavScreen.id: (context) => NavScreen(),
        EventHistory.id:(context)=>EventHistory(),
        TransactionHistory.id:(context)=>TransactionHistory(),

      },
      initialRoute: NavScreen.id,
    );
  }
}
