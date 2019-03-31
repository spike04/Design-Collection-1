import 'package:design_collection/widgets/shopping/dress_section_body.dart';
import 'package:design_collection/widgets/shopping/dress_section_header.dart';
import 'package:flutter/material.dart';

class DressList extends StatefulWidget {
  @override
  _DressListState createState() => _DressListState();
}

class _DressListState extends State<DressList>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DressSectionHeader(tabController),
        DressSectionBody(tabController),
      ],
    );
  }
}
