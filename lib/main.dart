import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/constant.dart';
import 'package:notsapp/views/widgets/notes_view_body.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotApp());
}

class NotApp extends StatelessWidget {
  const NotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
