import 'package:flutter/material.dart';
import 'package:notsapp/views/notes_view.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: const NotesView(),
      ),
    );
  }
}
