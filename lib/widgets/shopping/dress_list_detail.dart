import 'package:flutter/material.dart';

class DressListDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/pic1.jpeg',
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: MediaQuery.of(context).size.width / 2 - 20,
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$499',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/pic2.jpeg',
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: MediaQuery.of(context).size.width / 2 - 20,
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$199',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: <Widget>[
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/pic1.jpeg',
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: MediaQuery.of(context).size.width / 2 - 20,
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$499',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/pic2.jpeg',
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: MediaQuery.of(context).size.width / 2 - 20,
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$199',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
