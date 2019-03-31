import 'package:design_collection/model/menu.dart';
import 'package:design_collection/widgets/main_list/gridItem.dart';
import 'package:flutter/material.dart';

class MainListPage extends StatelessWidget {
  final List<MenuItem> menuList;

  MainListPage(this.menuList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Collection'),
        backgroundColor: Color(0xFFFA624F),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: menuList
            .map(
              (menu) => GridTile(
                    child: GridItem(menu),
                  ),
            )
            .toList(),
      ),
    );
  }
}
