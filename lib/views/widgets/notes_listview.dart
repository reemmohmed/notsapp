import 'package:flutter/material.dart';

import 'custom_item.dart';

class NotesListviewe extends StatelessWidget {
  const NotesListviewe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: CustomItem(),
      );
    });
  }
}
