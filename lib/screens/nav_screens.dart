import 'package:PiraticaApp/screens/eventsScreen/eventHomeScreen.dart';
import 'package:PiraticaApp/screens/profile_page.dart';
import 'package:PiraticaApp/screens/profiletest.dart';

import 'package:PiraticaApp/widgets/constants.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'chatScreen/chatHomeScreen.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key key}) : super(key: key);

  static String id = 'NavScreen';
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    EventHomeScreen(),
    ChatHomeScreen(),
    // ProfilePage(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: BottomNavyBar(
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Events'),
                  activeColor: kOtherColor,
                  inactiveColor: Colors.black,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.chat),
                  title: Text('Messaging'),
                  activeColor: kOtherColor,
                  inactiveColor: Colors.black,
                ),
                // BottomNavyBarItem(
                //   icon: Icon(Icons.account_box_rounded),
                //   title: Text('Profile'),
                //   activeColor: kOtherColor,
                //   inactiveColor: Colors.black,
                // ),
                BottomNavyBarItem(
                  icon: Icon(Icons.account_box_rounded),
                  title: Text('Profile'),
                  activeColor: kOtherColor,
                  inactiveColor: Colors.black,
                ),
              ],
              selectedIndex: _selectedIndex,
              onItemSelected: (index) =>
                  setState(() => _selectedIndex = index)),
        ));
  }
}
// Padding(
//             padding: const EdgeInsets.only(bottom: 12.0),
//             child: CustomTabBar(
//               icons: _icons,
//               selectedIndex: _selectedIndex,
//               onTap: (index) => setState(() => _selectedIndex = index),
//             ),
//           ),

//  final List<IconData> _icons = [
//     Icons.home,
//     Icons.event,
//     Icons.ondemand_video,
//     MdiIcons.bellOutline,
//     Icons.menu,
//     MdiIcons.accountOutline,
//     Icons.event,
//   ];
