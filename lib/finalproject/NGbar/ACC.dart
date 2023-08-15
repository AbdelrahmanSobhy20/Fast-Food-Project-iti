import 'package:flutter/material.dart';

class AccNG extends StatelessWidget {
  const AccNG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assets/images/logo1.png"),
              width: 250,
              height: 250,
            ),
            Text(
              "Who We Are",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              "Fast Food Restaurant is a new restaurant that specializes in pizza and burgers. Some of the signature dishes that you can try here!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white60,
                overflow: TextOverflow.clip,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Our Message",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              "At Fast Food Restaurant, we believe that quality food should be accessible to everyone. That’s why we offer our dishes at affordable prices without compromising on taste or quality.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white60,
                overflow: TextOverflow.clip,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Our Developrs",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              "Eng/ Abdelrahman Mohamed Sobhy",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white60,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
