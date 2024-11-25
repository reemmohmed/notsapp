import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notsapp/cubits/add_note/add_note_cubit.dart';
import 'package:notsapp/views/widgets/add_note_form.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailuer) {
            print("failed ${state.errorMessage}");
          } else if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              // padding: EdgeInsets.symmetric(horizontal: 16),
              child: const SingleChildScrollView(child: Addnoteform()),
            ),
          );
        },
      ),
    );
  }
}
