import 'package:design_collection/screens/shopping_detail.dart';
import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/pic4.jpeg',
                fit: BoxFit.cover,
                height: 400.0,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Text(
                      'Louis W. & A.P.C',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Drop a Chic Selection of Outerwear',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      'for 2019 Spring/Summer',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    SizedBox(height: 150.0),
                    FloatingActionButton(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoppingDetail(),
                          ),
                        );
                      },
                      mini: true,
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/pic5.jpeg',
                fit: BoxFit.cover,
                height: 400.0,
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/pic2.jpeg',
                fit: BoxFit.cover,
                height: 400.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
