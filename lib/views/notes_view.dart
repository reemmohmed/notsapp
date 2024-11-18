import 'package:flutter/material.dart';

import 'package:notsapp/views/widgets/custom_appbar.dart';

import 'widgets/notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustomAppbar(),
              SizedBox(
                height: 20,
              ),
              Expanded(child: NotesListview())
            ],
          ),
        ),
      ),
    );
  }
}
