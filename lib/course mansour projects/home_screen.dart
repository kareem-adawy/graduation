import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          leading: Icon(
            Icons.menu,
          ),
          title: Text("First App By Kareem"),
          actions: [
            IconButton(
                onPressed: whenClickedButton,
                color: Colors.indigo,
                icon: Icon(Icons.notification_add_rounded)),
            Icon(Icons.search),
          ],
        ),
        body:Stack(
          alignment: Alignment.bottomCenter,
      children: [
        Image(image: NetworkImage("https://cdn-media.theathletic.com/SH1aVqOrpFRf_O4G7iBtuL2gQ_1440x960.png"),
          height: 400,
          width: 400,
          fit: BoxFit.fill,
    ),
        Container(
          width: 400,
          color: Colors.black,
          child: Text(
            "Messi Leaving barca in a shocking move!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,


            ) ,
          ),
        ),
    ],
    )
    );
  }

  void whenClickedButton() {
    print(" NO NOTIFICATIONS");
  }
}
