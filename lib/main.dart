import 'package:flutter/material.dart';

import 'package:notsapp/views/widgets/notes_view_body.dart';

void main() {
  runApp(const NotApp());
}

class NotApp extends StatelessWidget {
  const NotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesViewbody(),
    );
  }
}
