import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mansour_udemy/New%20Course%20flutter/question.dart';
import 'package:mansour_udemy/New%20Course%20flutter/quizResult.dart';

class EndQuestion extends StatelessWidget {
  const EndQuestion({Key? key}) : super(key: key);

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
              child: Text("What's your fav Series ya m3rs?",
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
                      builder: (context) => Result()));},
                  child: Text("Mad Men",
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
                      builder: (context) => Result()));},
                  child: Text("Game Of Thrones",
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
                      builder: (context) => Result()));},
                  child: Text("Breaking Bad",
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

