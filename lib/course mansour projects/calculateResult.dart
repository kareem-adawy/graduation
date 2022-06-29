import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculateResult extends StatelessWidget {
  final double result;
  final int age;
  final int weight;
  final bool isMale;

  CalculateResult({
    required this.age,
    required this.result,
    required this.weight,
    required this.isMale,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("RESULT",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender: ${isMale? "Male":"Female"} ",
            style: TextStyle(
              fontSize: 30,
              color: Colors.yellow
            ),),
            Text("Age: $age ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow
              ),),
            Text("BMI Result = ${result.round()} ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow
              ),),
            Text("The Normal BMI = 18:25 ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow
              ),),

          ],
        ),
      ),
    );
  }
}
