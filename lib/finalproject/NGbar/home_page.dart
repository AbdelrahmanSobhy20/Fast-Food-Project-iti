import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../firebase/firebase.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CollectionReference dataCollection =
      FirebaseFirestore.instance.collection('pizza');

  final CollectionReference dataCollection1 =
      FirebaseFirestore.instance.collection('burger');

  final CollectionReference dataCollection2 =
      FirebaseFirestore.instance.collection('drink');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Column(
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(28, 5, 5, 5),
                  child: const Text(
                    "Good Food for Good Life",
                    style: TextStyle(
                      fontFamily: 'Dancing',
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2,
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.orange.shade800,
                        width: 2,
                      ),
                    ),
                    labelText: "Search",
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.local_pizza_outlined)),
                  Tab(icon: Icon(Icons.lunch_dining_outlined)),
                  Tab(icon: Icon(Icons.local_drink_outlined))
                ],
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      pizza(),
                      burger(),
                      drinks(),
                    ],
                  )),
            ],
          ),
        ));
  }

  Widget pizza() {
    return StreamBuilder<QuerySnapshot>(
        stream: dataCollection.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          var documents = snapshot.data!.docs;

          return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, index) {
                var document = documents[index];
                var imageUrl = document['image'];
                var name = document['name'];
                var price = document['price'];

                return GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 0.76,
                    children: [
                      for (int i = 0 ; i< 6 ; ++i )
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          margin: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey.shade900,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(1),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                )
                              ]),
                          child: Column(children: [
                            Container(
                                margin: const EdgeInsets.all(10),
                                child: Image.network(
                                  documents[i]['image'],
                                  width: 130,
                                  height: 130,
                                  fit: BoxFit.cover,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  documents[i]['name'],
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  documents[i]['price'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.shopping_cart,
                                    size: 28,
                                  ),
                                  color: Colors.white,
                                  onPressed: () {},
                                )
                              ],
                            )
                          ])),
                    ]);
              });
        });
  }

  Widget burger() {
    return StreamBuilder<QuerySnapshot>(
        stream: dataCollection1.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          var documents = snapshot.data!.docs;

          return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, index) {
                var document = documents[index];
                var imageUrl = document['image'];
                var name = document['name'];
                var price = document['price'];

                return Expanded(
                  child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 0.76,
                      children: [
                        for (int i = 0 ; i< 4 ; ++i )
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey.shade900,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(1),
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                    )
                                  ]),
                              child: Column(children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    child: Image.network(
                                      documents[i]['image'],
                                      width: 130,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      documents[i]['name'],
                                      style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      documents[i]['price'],
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        size: 28,
                                      ),
                                      color: Colors.white,
                                      onPressed: () {},
                                    )
                                  ],
                                )
                              ])),
                      ]),
                );
              });
        });
  }

  Widget drinks() {
    return StreamBuilder<QuerySnapshot>(
        stream: dataCollection2.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          var documents = snapshot.data!.docs;

          return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, index) {
                var document = documents[index];
                var imageUrl = document['image'];
                var name = document['name'];
                var price = document['price'];

                return Expanded(
                  child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 0.76,
                      children: [
                        for (int i = 0 ; i< 4 ; ++i )
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey.shade900,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(1),
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                    )
                                  ]),
                              child: Column(children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    child: Image.network(
                                      documents[i]['image'],
                                      width: 130,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      documents[i]['name'],
                                      style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      documents[i]['price'],
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        size: 28,
                                      ),
                                      color: Colors.white,
                                      onPressed: () {},
                                    )
                                  ],
                                )
                              ])),
                      ]),
                );
              });
        });
  }
}
