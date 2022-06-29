import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,

          ),
        ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image:
          NetworkImage(
              "https://ae01.alicdn.com/kf/Hfcb7fb979e58460dbb01260ddd631134G/Fashion-Wedding-Jewellery-Set-Crystal-Bridal-Jewelry-Sets-for-Women-Statement-Necklace-Earrings-Set-Engagement-Jewelry.jpg_Q90.jpg_.webp"),
            
          ),
          SizedBox(
            height: 10,
          ),
          Text("Necklace",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            backgroundColor: Colors.black26
          ),
          )
        ],

      ),


    );
  }
}
