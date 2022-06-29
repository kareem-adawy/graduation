
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mansour_udemy/eCommerce%20APP/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1d242b),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.search),
           SizedBox(
             width: 15,
           ),
          Icon(Icons.shopping_cart_sharp),
          SizedBox(
            width: 5,
          )
        ],
      ),
     body: EcBody(),
    );
  }
}
