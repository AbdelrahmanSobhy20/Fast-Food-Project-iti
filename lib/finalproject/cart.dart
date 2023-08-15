import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
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
                  icon : Icon(Icons.shopping_cart , size: 30,),
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
      body: const Center(
        child: Text("There is no items" , style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),),
      ),
    );
  }
}
