import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'birthday.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Result"
            ""),
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Zo2ak 5ara 3la Dma8ak",
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),
            ),
          ),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => QuizApp()));
          },
              child: Text("Restart The app",
              style: TextStyle(
                fontSize: 25
              ),
              )),
        ],
      ),
    );
  }
}
