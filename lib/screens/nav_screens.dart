import 'package:PiraticaApp/screens/chatscreen.dart';
import 'package:PiraticaApp/screens/eventsScreen/eventHomeScreen.dart';
import 'package:PiraticaApp/screens/home_screen.dart';
import 'package:PiraticaApp/screens/leaderboard3.dart';
import 'package:PiraticaApp/screens/profile_page.dart';
import 'package:PiraticaApp/screens/setup.dart';
import 'package:PiraticaApp/screens/signIn_page.dart';
import 'package:PiraticaApp/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key key}) : super(key: key);

  static String id = 'NavScreen';
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    ChatScreen(),
    HomeScreen(),
    SignInPage(),
    EventHomeScreen(),
    Lead1(),
    ProfilePage(),
    Lead(),
  ];
  final List<IconData> _icons = [
    Icons.home,
     Icons.event,
    Icons.ondemand_video,
    MdiIcons.bellOutline,
    Icons.menu,
    MdiIcons.accountOutline,
    Icons.event,
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: CustomTabBar(
              icons: _icons,
              selectedIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
            ),
          ),
        ));
  }
}
