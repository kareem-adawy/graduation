
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMI_Result.dart';

class bmiCalculator extends StatefulWidget {
  const bmiCalculator({Key? key}) : super(key: key);

  @override
  _bmiCalculatorState createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  bool isMale = true;
  double height = 120;

  int weight = 50;
  int age = 21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Container(
        color: Colors.lightBlue[900],
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  alignment: AlignmentDirectional.center,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            color: isMale ? Colors.pinkAccent[400] : Colors.black,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/male - Copy.png"),
                                    height: 90,
                                    width: 90,
                                  ),
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(fontSize: 40,
                                  color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                              borderRadius: BorderRadiusDirectional.circular(7),
                              color: isMale ? Colors.black : Colors.pinkAccent[400],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/female - Copy.jpg"),
                                    height: 90,
                                    width: 90,
                                  ),
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(fontSize: 40,
                                  color: Colors.white
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  color: Colors.black,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("HEIGHT",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text("${height.round()}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                            "cm",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80,
                        max: 220,
                        onChanged: ( value) {
                          setState(() {
                            height = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(

                  color: Colors.transparent,
                  width: double.infinity,

                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(fontSize: 30,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$weight",
                                style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(fontSize: 30,
                                color: Colors.grey[600],
                               fontWeight: FontWeight.bold),
                                ),

                              Text(
                                "$age",
                                style: TextStyle(fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

                Container(
                  width: double.infinity,
                  color: Colors.pinkAccent[400],
                  child: Column(
                    children:[ MaterialButton(
                      onPressed: () {
                        double result = weight / pow(height/100 , 2);

                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MBI_result(
                          age: age,
                          isMale: isMale,
                          result: result,
                        ))
                        );
                      },
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),

                  Container(
                    height: 4,
                    width: 150,
                    color: Colors.indigo[900],
                  ),
                      SizedBox(
                        height: 5,
                      )
              ],
            ),
                )
          ],
        ),
      ),
    );
  }
}
