import 'package:design_collection/model/menu.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final MenuItem menu;

  const GridItem(this.menu);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkResponse(
        enableFeedback: true,
        onTap: () {
          Navigator.pushNamed(context, menu.route);
        },
        child: Material(
          elevation: 2.0,
          borderRadius: BorderRadius.circular(7.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              image: DecorationImage(
                image: AssetImage(menu.imgPath),
                colorFilter: ColorFilter.mode(
                  Color(0xFFFA624F).withOpacity(0.4),
                  BlendMode.multiply,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                menu.title,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
