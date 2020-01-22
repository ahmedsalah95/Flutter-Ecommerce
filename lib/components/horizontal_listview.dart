import 'package:flutter/material.dart';

Widget listViewComponent() {
  return Container(
    height: 80.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Category(
            image_location: "images/cats/accessories.png",
            image_name: "accessories"),
        Category(
            image_location: "images/cats/dress.png",
            image_name: "dress"),
        Category(
            image_location: "images/cats/formal.png",
            image_name: "formal"),
        Category(
            image_location: "images/cats/jeans.png",
            image_name: "jeans"),
        Category(
            image_location: "images/cats/shoe.png",
            image_name: "shoe"),

      ],
    ),
  );
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_name;

 Category({this.image_location,this.image_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 50,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
