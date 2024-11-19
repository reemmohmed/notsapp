import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/edit_notes_view_body.dart';

class EditViewNotes extends StatelessWidget {
  const EditViewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
