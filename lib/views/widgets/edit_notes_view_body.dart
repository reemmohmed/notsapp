import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/views/widgets/Edit_Note_Color_Lis-tView.dart';
import 'package:notsapp/views/widgets/custom_appbar.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomAppbar(
              onpressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                BlocProvider.of<NotesCubit>(context).feachallNOts();
                Navigator.pop(context);
                widget.note.save();
              },
              titel: 'Edit Notes',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 20,
            ),
            Custtomtextfield(
                onchanged: (value) {
                  title = value;
                },
                hint: widget.note.title
                //  'Titel'
                ),
            const SizedBox(
              height: 20,
            ),
            Custtomtextfield(
              onchanged: (value) {
                subtitle = value;
              },
              hint: widget.note.subtitle,
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            EditNoteColorListView(note: widget.note)
          ],
        ),
      ),
    );
  }
}
