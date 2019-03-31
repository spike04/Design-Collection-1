import 'package:flutter/material.dart';
import 'package:design_collection/widgets/shopping/categoryImages.dart';
import 'package:design_collection/widgets/shopping/dress_list.dart';
import 'package:design_collection/widgets/shopping/topHeader.dart';

class ShoppingDetail extends StatefulWidget {
  @override
  _ShoppingDetailState createState() => _ShoppingDetailState();
}

class _ShoppingDetailState extends State<ShoppingDetail>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ShopTopHeader(),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Cutting-edge items to stay in style, perfect for all of your moments.',
              style: TextStyle(
                  fontFamily: 'Quicksand', fontSize: 17.0, color: Colors.black),
            ),
          ),
          SizedBox(height: 25.0),
          CategoryImages(),
          DressList(),
        ],
      ),
    );
  }
}
