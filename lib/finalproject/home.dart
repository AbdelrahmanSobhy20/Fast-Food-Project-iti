import 'package:fisrtapp/finalproject/NGbar/INFO.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'NGbar/home_page.dart';
import 'NGbar/ACC.dart';
import 'cart.dart';

class HomeRes extends StatefulWidget {
  const HomeRes({Key? key}) : super(key: key);

  @override
  State<HomeRes> createState() => _HomeResState();
}

class _HomeResState extends State<HomeRes> {
  int currentindex = 0;
  List<Widget> screens = [
    const HomePage(),
    const InfoNG(),
    const AccNG(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.orange[800],
          title: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const SizedBox(
                  width: 100,
                ),
                const Image(
                  image: AssetImage("assets/images/logo1.png"),
                  height: 65,
                  width: 65,
                ),
                const SizedBox(
                  width: 110,
                ),
                IconButton(
                  icon : const Icon(Icons.shopping_cart , size: 30,),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const Cart()));
                  },
                )
              ],
            ),
          )),
      body: screens[currentindex],
      bottomNavigationBar: Container(
        color: Colors.orange.shade800,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GNav(
          backgroundColor: Colors.orange.shade800,
          color: Colors.white,
          gap: 0.5,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.orange.shade900,
          padding: const EdgeInsets.all(20),
          selectedIndex: currentindex,
          onTabChange: (index) {
            print(index);
            setState(() {
              currentindex = index;
              screens[currentindex];
            });
          },
          tabs: const [
            GButton(icon: Icons.home, text: " Home", iconSize: 30),
            GButton(icon: Icons.person, text: " My Account", iconSize: 30),
            GButton(icon: Icons.info, text: " Information", iconSize: 30),
          ],
        ),
      ),
    );
  }
}
