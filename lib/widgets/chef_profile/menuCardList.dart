import 'package:flutter/material.dart';
import 'package:design_collection/widgets/chef_profile/menuCard.dart';

class MenuCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MenuCard('Berry Banana Milk Shake', 'assets/bananaberry.jpeg',
            'Breakfast', 4, 2.8, 1.2),
        SizedBox(height: 12.0),
        MenuCard('Fruit pancake', 'assets/bananabreak.jpg', 'Breakfast', 4, 4.2,
            2.8),
      ],
    );
  }
}
