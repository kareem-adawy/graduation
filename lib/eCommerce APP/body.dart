import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mansour_udemy/eCommerce%20APP/models/Models.dart';
import 'Category.dart';
import 'DetailsScreen.dart';
import 'Item Card.dart';

class EcBody extends StatelessWidget {
  const EcBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Walliton Store",
          style: TextStyle(
            color: Color(0xFF1d242b),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.80
                  ),
                  itemBuilder: (context, index) => ItemCard(
                        press: () => Navigator.push(context, MaterialPageRoute(
                            builder: (context) => DetailsScreen())), product: products[index],
                      )
              ),
            ))

      ]
    );
  }
}



