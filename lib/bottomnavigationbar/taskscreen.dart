import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
      Text("New Task",
      style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),));
  }
}
