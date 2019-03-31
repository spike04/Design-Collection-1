import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final String title;

  const HeaderSection(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
          Text(
            'see all',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
