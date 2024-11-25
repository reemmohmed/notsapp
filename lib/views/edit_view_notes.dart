import 'package:flutter/material.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/views/widgets/edit_notes_view_body.dart';

class EditViewNotes extends StatelessWidget {
  const EditViewNotes({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(
        note: note,
      ),
    );
  }
}
