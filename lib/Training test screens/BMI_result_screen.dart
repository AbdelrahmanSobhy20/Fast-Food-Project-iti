import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.result,required this.isMale, required this.age}) : super(key: key);

  final double? result;
  final bool isMale;
  final int? age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 15,
        centerTitle: true,
        title: const Text(
          "BMI RESULT",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Text("Gender:${isMale? "Male" : "Female"}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold , color: Colors.white) ,),
           // Text("Height:$height", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold , color: Colors.white) ,),
           // Text("Weight:$weight", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold , color: Colors.white) ,),
            Text("Age:$age", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold , color: Colors.white) ,),
            Text("BMI Result:${result?.round()}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold , color: Colors.white) ,)
          ]),
    ));
  }
}
