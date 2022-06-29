import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Question 2.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        actions: [
          Icon(Icons.edit)
        ],
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("What's your fav movie ya m3rs?",
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                color: Colors.red[100],
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => EndQuestion()));
                },
                  child: Text("Click",
                      style: TextStyle(
                        fontSize: 20,
                      )),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                color: Colors.red[100],
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => EndQuestion()));
                },
                  child: Text("Free Guy",
                      style: TextStyle(
                        fontSize: 20,
                      )),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                color: Colors.red[100],
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => EndQuestion()));
                },
                  child: Text("Good Will Hunting",
                      style: TextStyle(
                        fontSize: 20,
                      )),),
              ),
            ),

          ]
      ),
    );
  }
}
