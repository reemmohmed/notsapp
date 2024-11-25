import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';

import 'custom_item.dart';

class NotesListviewe extends StatelessWidget {
  const NotesListviewe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: CustomItem(
                    notes: notes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
