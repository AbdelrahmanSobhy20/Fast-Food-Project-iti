import 'package:fisrtapp/finalproject/login.dart';
import 'package:flutter/material.dart';

import '../cart.dart';

class InfoNG extends StatelessWidget {
  const InfoNG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 200,
              color: Colors.white12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: const [
                      CircleAvatar(
                        radius: 50,
                        child: Image(
                            image: NetworkImage(
                                "https://www.pngall.com/wp-content/uploads/5/Profile.png")),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(Icons.edit, size: 30, color: Colors.white),
                      )
                    ],
                  ),
                  const Text(
                    "abdelrahmanSobhy@test.com",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginRes()));
                      },
                      child: const Text(
                        "Log out",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.shopping_cart,
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "My Orders",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Cart()));
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.favorite,
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "My Favorites",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Cart()));
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.question_mark,
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Reviews",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Cart()));
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.wallet,
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Payment",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Cart()));
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    ),
                  ),
                  ])),
                ],
              ),
            );
  }
}

Widget items({required IconData x, required String y}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white12,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 20,
        ),
        Icon(
          x,
          size: 30,
        ),
        const SizedBox(width: 10),
        Text(
          y,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 140,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios_outlined))
      ],
    ),
  );
}

/*
Center(
            child: Container(
            margin: const EdgeInsets.symmetric(vertical:130),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 75,
                    child: Icon(
                      Icons.person,
                      size: 120,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Abdelrahman",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      )),
                  const Text("abdelrahmanSobhy@test.com",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 140,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("BALANCE",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF006093),
                            )),
                        const Text(
                          "250.00 L.E",
                          style: TextStyle(fontSize: 40, color: Color(0xFF1c3b70)),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: const Color(0xFF1c3b70),
                          child: const Text(
                            "lOG OUT",
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 3,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
*/
