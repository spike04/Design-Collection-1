import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String imgPath;
  final String type;
  final int rating;
  final double views;
  final double likes;

  MenuCard(
      this.title, this.imgPath, this.type, this.rating, this.views, this.likes);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 3.0,
        child: Container(
          height: 130.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 110.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          type,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            getStar(rating, 1),
                            getStar(rating, 2),
                            getStar(rating, 3),
                            getStar(rating, 4),
                            getStar(rating, 5),
                          ],
                        ),
                        SizedBox(height: 4.0),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey.withOpacity(0.4),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '${views}w',
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '${likes}w',
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getStar(int rating, int index) {
    return Icon(Icons.star,
        color: (rating >= index) ? Colors.yellow : Colors.grey);
  }
}
