import 'package:PiraticaApp/screens/leaderboard.dart';
import 'package:PiraticaApp/screens/profile_page.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF112d4e);
const kOtherColor = Color(0xFF3f72af);
const kPrimaryLightColor = Color(0xFFf9f7f7);
const drawerTextColor = Color(0xFFdbe2ef);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[400], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> drawerItems = [
  {
    'icon': Icons.account_circle,
    'title': 'Account Settings',
    'onTap': ProfilePage.id
  },
  {'icon': Icons.history, 'title': 'History', 'onTap': Leaderboard.id},
  {
    'icon': Icons.notifications,
    'title': 'Notification Settings',
    'onTap': Leaderboard.id
  },
  {'icon': Icons.list, 'title': 'Leaderboard', 'onTap': Leaderboard.id},
  {'icon': Icons.access_time, 'title': 'Rewards', 'onTap': Leaderboard.id},
  {'icon': Icons.palette, 'title': 'Goodies', 'onTap': Leaderboard.id},
];
//Color(0xFFc4c0ff)
