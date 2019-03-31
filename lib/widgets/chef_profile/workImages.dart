import 'package:flutter/material.dart';

class WorkImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 125.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            getWorks('assets/fruitpancake.jpeg'),
            getWorks('assets/dumplings.jpeg'),
            getWorks('assets/noodles.jpeg'),
            getWorks('assets/fruitpancake.jpeg'),
            getWorks('assets/dumplings.jpeg'),
            getWorks('assets/noodles.jpeg'),
          ],
        ),
      ),
    );
  }

  Widget getWorks(String imgPath) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(7.0),
        child: Container(
          width: 125.0,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
