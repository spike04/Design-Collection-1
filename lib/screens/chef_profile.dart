import 'package:flutter/material.dart';
import 'package:design_collection/widgets/chef_profile/headerSection.dart';
import 'package:design_collection/widgets/chef_profile/menuCardList.dart';
import 'package:design_collection/widgets/chef_profile/topHeader.dart';
import 'package:design_collection/widgets/chef_profile/workImages.dart';

class ChefProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          TopHeader(),
          HeaderSection('Menu'),
          SizedBox(height: 10.0),
          MenuCardList(),
          SizedBox(height: 24.0),
          HeaderSection('Works'),
          SizedBox(height: 10.0),
          WorkImages(),
          SizedBox(height: 20.0),
          HeaderSection('Bought'),
          SizedBox(height: 20.0),
          MenuCardList(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
