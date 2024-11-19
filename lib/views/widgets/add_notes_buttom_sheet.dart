import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Custtomtextfield(
            hint: 'titel',
          ),
          SizedBox(
            height: 10,
          ),
          Custtomtextfield(
            hint: 'contents',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
