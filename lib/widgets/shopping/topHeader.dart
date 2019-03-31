import 'package:flutter/material.dart';

class ShopTopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pic4.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
            elevation: 0.0,
            child: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 100.0),
          child: Text(
            'Woman',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 37.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
