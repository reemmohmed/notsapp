import 'package:flutter/material.dart';
import 'package:notsapp/views/notes_view.dart';

import 'add_notes_buttom_sheet.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNotesButtomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesView(),
      ),
    );
  }
}
