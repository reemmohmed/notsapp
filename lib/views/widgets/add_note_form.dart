import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/cubits/add_note/add_note_cubit.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';

class Addnoteform extends StatefulWidget {
  const Addnoteform({
    super.key,
  });

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Custtomtextfield(
            onSave: (value) {
              //استقبال value in title
              title = value;
            },
            hint: 'titel',
          ),
          const SizedBox(
            height: 15,
          ),
          Custtomtextfield(
            onSave: (value) {
              subtitle = value;
            },
            hint: 'contents',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                islooding: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var notemodel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addnot(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                  setState(() {});
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
