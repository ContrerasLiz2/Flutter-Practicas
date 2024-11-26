import 'package:flutter/material.dart';
import 'package:flutter_prac4_listas/widget/listas3.dart';
import 'package:flutter_prac4_listas/widget/listas2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : Listas2(),
    );
    
  }
}

