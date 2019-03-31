import 'package:flutter/material.dart';

class DressSectionHeader extends StatelessWidget {
  final TabController tabController;

  const DressSectionHeader(this.tabController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TabBar(
        controller: tabController,
        indicatorColor: Colors.transparent,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey.withOpacity(0.6),
        isScrollable: true,
        tabs: <Widget>[
          Tab(
            child: Text(
              'All',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Tab(
            child: Text(
              'Coats',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Tab(
            child: Text(
              'Jackets',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Tab(
            child: Text(
              'Blazers',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Tab(
            child: Text(
              'Dresses',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
