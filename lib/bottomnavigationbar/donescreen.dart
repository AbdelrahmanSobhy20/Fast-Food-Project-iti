import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  const Done({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child:
        Text("What is done!",
          style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),));
  }
}
