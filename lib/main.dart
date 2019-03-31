import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design_collection/screens/main_list_page.dart';
import 'package:design_collection/screens/shopping.dart';
import 'package:design_collection/screens/user_profile.dart';

import 'package:design_collection/model/menu.dart';
import 'package:design_collection/screens/chef_profile.dart';

var menuList = List<MenuItem>();

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(statusBarColor: Color(0xFFFA624F)),
  );
  menuList.add(MenuItem('Chef Profile', 'assets/chris.jpg', '/chef'));
  menuList.add(MenuItem('User Profile', 'assets/tomcruise.jpg', '/user'));
  menuList.add(MenuItem('Shopping', 'assets/pic1.jpeg', '/shopping'));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainListPage(menuList),
        '/chef': (context) => ChefProfile(),
        '/user': (context) => UserProfile(),
        '/shopping': (context) => Shopping(),
      },
    );
  }
}
