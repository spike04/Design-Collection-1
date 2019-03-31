import 'package:flutter/material.dart';
import 'package:design_collection/widgets/shopping/dress_list_detail.dart';

class DressSectionBody extends StatelessWidget {
  final TabController tabController;

  const DressSectionBody(this.tabController);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 350.0,
      child: TabBarView(
        controller: tabController,
        children: <Widget>[
          DressListDetail(),
          DressListDetail(),
          DressListDetail(),
          DressListDetail(),
          DressListDetail(),
        ],
      ),
    );
  }
}
