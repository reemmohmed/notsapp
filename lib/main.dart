import 'package:flutter/material.dart';

void main() {
  runApp(const NotApp());
}

class NotApp extends StatelessWidget {
  const NotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(),
    );
  }
}
