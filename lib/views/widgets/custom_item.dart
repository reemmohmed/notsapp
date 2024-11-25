import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/views/edit_view_notes.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditViewNotes(
            note: notes,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: Color(notes.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  notes.title,
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  notes.subtitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<NotesCubit>(context).feachallNOts();
                },
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 24),
              child: Text(notes.date,
                  style:
                      const TextStyle(color: Color(0xff996e3a), fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}
