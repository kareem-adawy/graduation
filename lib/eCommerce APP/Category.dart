import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mansour_udemy/eCommerce%20APP/body.dart';

import 'DetailsScreen.dart';
import 'Item Card.dart';
import 'Options.dart';
import 'body 2.dart';
import 'models/Models.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Men Clothes", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index),
          )
      ),
    );
  }


  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => selectedIndex == 0? SecondBody() :
            selectedIndex == 1? SecondBody() : DetailsScreen()
        )
        );
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : Colors.grey,

              ),
            ),
            Container(
              height: 2,
              width: 35,
              color: selectedIndex == index ? Color(0xFF0077c0) : Colors.transparent,
            ),

          ],
        ),
      ),
    );
  }
}