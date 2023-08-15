import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  DataCard({required this.imageUrl, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl),
          ListTile(
            title: Text(name),
            subtitle: Text(price),
          ),
        ],
      ),
    );
  }
}

/*
class Fire extends StatefulWidget {
  const Fire({Key? key}) : super(key: key);

  @override
  State<Fire> createState() => _FireState();
}

class _FireState extends State<Fire> {
  Query dbRef= FirebaseDatabase.instance.ref().child('pizza');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
          query: dbRef,
          itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
            Map pizza =snapshot.value as Map;
            pizza['key'] =snapshot.key;
            return listpizza(pizza: pizza);
          }
        ),
      ),
    );
  }

}

 */