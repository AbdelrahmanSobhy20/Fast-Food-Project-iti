import 'package:fisrtapp/finalproject/login.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          const SizedBox(height: 200,),
          const Center(
              child: Image(
            image: AssetImage("assets/images/logo1.png"),
            width: 300,
            height: 300,
          )),
          const SizedBox(
            height: 100,
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.orange.shade800,
            ),
            child: MaterialButton(
              color: Colors.orange.shade800,
                onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const LoginRes())); },
                child:const Text("Start" , style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),)),
          )
        ],
      ),
    ));
  }
}
