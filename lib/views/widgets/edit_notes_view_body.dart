import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_appbar.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppbar(
            titel: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          Custtomtextfield(hint: 'Titel'),
          SizedBox(
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
