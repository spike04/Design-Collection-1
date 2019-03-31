import 'package:flutter/material.dart';

class CategoryImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          getShoppingCategoryImages('assets/pic1.jpeg', 'New In'),
          getShoppingCategoryImages('assets/pic2.jpeg', 'Tops'),
          getShoppingCategoryImages('assets/pic3.jpeg', 'Pants'),
          getShoppingCategoryImages('assets/pic4.jpeg', 'Accessories'),
          getShoppingCategoryImages('assets/pic5.jpeg', 'Jeans'),
        ],
      ),
    );
  }

  Widget getShoppingCategoryImages(String imagePath, String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 4.0),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(50.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
