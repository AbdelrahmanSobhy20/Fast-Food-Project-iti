import 'package:firebase_core/firebase_core.dart';
import 'package:fisrtapp/finalproject/login.dart';
import 'package:fisrtapp/finalproject/start_screen.dart';
import 'package:flutter/material.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:Start(),
    );
  }
}

