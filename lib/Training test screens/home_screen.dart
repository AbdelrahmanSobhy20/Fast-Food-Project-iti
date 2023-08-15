import 'package:flutter/material.dart';
import '';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}) ;
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

  class _HomeScreen extends State<HomeScreen>{
  int num=1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.menu),
        title: const Text("Sobhy"),
        centerTitle: true,
        actions:  [
          IconButton(
              onPressed: (){
              setState(() {
                num++;
              });
               print(num);
    },
              icon: Text("$num"))
        ],
      ),
    body:Column(
      children: const [
        Image(
          image: NetworkImage("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
          fit:BoxFit.fill ,
        ),
      ],
    )
    );
  }
}
void printData(){

}