import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: Image.network(
                "https://thumbs.dreamstime.com/z/collection-take-away-foil-boxes-healthy-food-set-containers-meals-top-view-free-copy-space-164637874.jpg"),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(40, 10, 0, 10),
                height: 100,
                width:100,
                child: Image.asset("assets/images/food.png"),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(110, 10, 30, 10),
                  alignment: AlignmentDirectional.bottomEnd,
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/images/meal.png"))
            ],
          ),
        ],
      ),
    );
  }
}
