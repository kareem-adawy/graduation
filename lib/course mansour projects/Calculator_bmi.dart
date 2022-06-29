import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../calculateResult.dart';

class CalculatorBmi extends StatefulWidget {
  const CalculatorBmi({Key? key}) : super(key: key);
  @override
  _CalculatorBmiState createState() => _CalculatorBmiState();
}

class _CalculatorBmiState extends State<CalculatorBmi> {
  bool isMale = true;
  double height = 120;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
            child: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(7),
                  color: Colors.black,
                ),
                child: Row(children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          color: isMale ? Colors.black : Colors.yellow,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 40),
                              child: Image(
                                image: AssetImage("images/male - Copy.png"),
                                width: 90,
                                height: 80,
                                color: Colors.yellow,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Male",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale ? Colors.yellow : Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 40.0),
                              child: Image(
                                image: AssetImage("images/female - Copy.jpg"),
                                width: 90,
                                height: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ])),
          ),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(7),
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: TextStyle(color: Colors.yellow, fontSize: 30),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.yellow, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                    max: 220,
                    min: 80,
                    activeColor: Colors.yellow,
                    inactiveColor: Colors.yellow,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellow),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellow),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              backgroundColor: Colors.yellow,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              backgroundColor: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellow),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellow),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.black),
                              backgroundColor: Colors.yellow,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              backgroundColor: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.yellow,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);

                print(result.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CalculateResult(
                              age: age,
                              result: result,
                              weight: weight,
                              isMale: isMale,
                            )));
              },
              child: Text(
                "CALCULATE",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
