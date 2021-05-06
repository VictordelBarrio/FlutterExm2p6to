import 'package:flutter/material.dart';
import 'package:examen2p6to/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen 611 P2',
      home: Home(),
    );
  }
}
