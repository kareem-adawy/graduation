import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mansour_udemy/New%20Course%20flutter/question.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);


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
              child: Text("What's your fav color ya m3rs?",
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
                    builder: (context) => Questions()));},
                  child: Text("Red",
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
                    builder: (context) => Questions()));},
                  child: Text("green",
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
                    builder: (context) => Questions()));},
                  child: Text("blue",
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

