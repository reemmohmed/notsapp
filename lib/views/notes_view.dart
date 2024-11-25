import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';

import 'package:notsapp/views/widgets/custom_appbar.dart';
import 'package:notsapp/views/widgets/notes_listview.dart';

class NotesViewbody extends StatefulWidget {
  const NotesViewbody({super.key});

  @override
  State<NotesViewbody> createState() => _NotesViewbodyState();
}

class _NotesViewbodyState extends State<NotesViewbody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).feachallNOts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppbar(
            titel: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListviewe())
        ],
      ),
    );
  }
}
