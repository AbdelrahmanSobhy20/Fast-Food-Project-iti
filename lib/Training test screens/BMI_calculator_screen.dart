import 'dart:math';

import 'package:fisrtapp/Training%20test%20screens/BMI_result_screen.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool isMale = true;
  double height = 180;
  int age = 25;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 15,
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          // male and female
          // male and female
          // male and female
          // male and female
          // male and female

          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMale ? Colors.blue : Colors.black,
                          border: Border.all(width: 5, color: Colors.white)),
                      child: Column(
                        children: const [
                          Icon(Icons.male, color: Colors.white, size: 130),
                          Text(
                            "MALE",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: !isMale ? Colors.blue : Colors.black,
                          border: Border.all(width: 5, color: Colors.white)),
                      child: Column(
                        children: const [
                          Icon(Icons.female, color: Colors.white, size: 130),
                          Text(
                            "FEMALE",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

          // height
          // height
          // height
          // height

          Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        border: Border.all(width: 5, color: Colors.white)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("HEIGHT",
                            style:
                                TextStyle(color: Colors.white, fontSize: 50)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("${height?.round()}",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 50)),
                            const Text("cm",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30))
                          ],
                        ),
                        Slider(
                          value: height,
                          min: 140,
                          max: 220,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                            print(value.round());
                          },
                        )
                      ],
                    ),
                  ))),
          //weight and age
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        border: Border.all(width: 5, color: Colors.white)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "$weight",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 100),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  )),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              )
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        border: Border.all(width: 5, color: Colors.white)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 100),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  )),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              )
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // calculate
          Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  border: Border(left: BorderSide(width: 5, color: Colors.white),
                   right:BorderSide(width: 5, color: Colors.white),
                  top: BorderSide(width: 5, color: Colors.white),)),
              child: MaterialButton(
                onPressed: () {
                  var result = weight / pow(height / 100, 2);
                  print(result.round());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                              result: result,
                              isMale: isMale,
                              age: age,
                            )),
                  );
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
