import 'package:buho/Pages/home/home.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() {
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: home()),
      debugShowCheckedModeBanner: false,
    );
  }
}