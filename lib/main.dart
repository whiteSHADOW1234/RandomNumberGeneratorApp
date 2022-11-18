import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 220, 240, 255),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Random Number Generator'),
    );
  }
}

