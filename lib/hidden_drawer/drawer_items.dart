import 'package:design_app/hidden_drawer/drawer_item.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItems{

  static const home = DrawerItem(title: "Home", icon: FontAwesomeIcons.home);
  static const favourites = DrawerItem(title: "Favourites", icon: FontAwesomeIcons.heart);
  static const explore = DrawerItem(title: "Explore", icon: Icons.assistant_navigation);

  static const messages = DrawerItem(title: "Messages", icon: FontAwesomeIcons.facebookMessenger);

  static const profile = DrawerItem(title: "Profile", icon: Icons.person);
  static const settings = DrawerItem(title: "Settings", icon: Icons.settings);

  static const logout = DrawerItem(title: "LogOut", icon: Icons.logout);

  static const List<DrawerItem> all = [
    home,
    favourites,
    explore,
    messages,
    profile,
    settings,
    logout,
  ];

}