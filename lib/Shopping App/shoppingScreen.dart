import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) => buildBoardingItem(),
                itemCount: 3,
              ),
            ),
          ),
          SizedBox(
              height: 40),
          Row(
            children: [
              Text("screen"),
              Spacer(),
              FloatingActionButton(onPressed: () {},
              child: Icon(
                Icons.arrow_forward_ios,
              ),)
            ],
          ),
        ]
      ),
    );
  }
  Widget buildBoardingItem() => Column(
    children: [
      Image(image: AssetImage("assets/images/shoping.png")),
      SizedBox(height: 10),
      Text("Screen Title",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        )
        ,),
      SizedBox(height: 10),
      Text("Screen Body",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        )
        ,),

    ],
  );
}
