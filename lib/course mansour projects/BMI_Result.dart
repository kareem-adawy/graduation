import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MBI_result extends StatelessWidget {

  final double result;
  final int age;
  final bool isMale;

  MBI_result({
    required this.result,
    required this.age,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI RESULT",
        ),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Gender: ${isMale? "male": "Female"} ",
          style: TextStyle(
            fontSize: 30,
          ),
          ),
          Text("age: $age ",
          style: TextStyle(
            fontSize: 30,
          ),
          ),
          Text("result: $result ",
          style: TextStyle(
            fontSize: 30,
          ),
          ),
        ],
      ),
    )
    );
  }
}
