import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_appbar.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomAppbar(
            titel: 'Edit Notes',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          Custtomtextfield(hint: 'Titel'),
          const SizedBox(
            height: 20,
          ),
          Custtomtextfield(
            hint: 'Content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
