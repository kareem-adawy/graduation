import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mansour_udemy/eCommerce%20APP/models/Models.dart';

import 'DetailsScreen.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key, required this.press, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
             Navigator.push(context, MaterialPageRoute(
            builder: (context) => DetailsScreen()));
      }
      ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 180,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
              ),
              child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image)),
              ),
            ),
          
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(product.title,
              style: TextStyle(color: Color(0xFF1d242b),
              fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "\$${product.price}",
              style: TextStyle(color: Color(0xFF0077c0),
                fontWeight: FontWeight.bold
              ),),

          ),

        ],
      ),
    );
  }
}
