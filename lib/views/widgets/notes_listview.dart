import 'package:flutter/material.dart';

import 'custom_item.dart';

class NotesListviewe extends StatelessWidget {
  const NotesListviewe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: CustomItem(),
            );
          }),
    );
  }
}
