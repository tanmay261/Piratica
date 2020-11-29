import 'package:PiraticaApp/screens/event_history.dart';
import 'package:PiraticaApp/screens/leaderboard.dart';
import 'package:PiraticaApp/screens/profile_page.dart';
import 'package:PiraticaApp/screens/transaction_history.dart';
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
  {'icon': Icons.history, 'title': 'Event History', 'onTap': EventHistory.id},
  {
    'icon': Icons.notifications,
    'title': 'Transaction History',
    'onTap': TransactionHistory.id
  },
  {
    'icon': Icons.list,
    'title': 'Notification Settings',
    'onTap': Leaderboard.id
  },
];
