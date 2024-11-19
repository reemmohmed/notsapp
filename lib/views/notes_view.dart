import 'package:flutter/material.dart';

import 'package:notsapp/views/widgets/custom_appbar.dart';
import 'package:notsapp/views/widgets/notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [CustomAppbar(), Expanded(child: NotesListviewe())],
      ),
    );
  }
}
