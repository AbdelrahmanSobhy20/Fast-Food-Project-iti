import 'package:fisrtapp/bottomnavigationbar/taskscreen.dart';
import 'package:flutter/material.dart';

import 'archivescreen.dart';
import 'donescreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home>{

int currentindex = 0;
List<Widget> screens=[
  Task(),
  Done(),
  Archive()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task App"),
      ),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        currentIndex: currentindex,
        onTap: (index){
          print(index);
          setState(() {
            currentindex = index;
          });
          },

        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Task"),
        BottomNavigationBarItem(icon: Icon(Icons.check), label: "Done"),
        BottomNavigationBarItem(icon: Icon(Icons.archive_outlined), label: "Archive"),
      ],

      ),
    );
  }
}
