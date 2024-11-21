import 'package:flutter/material.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: Addnoteform()),
    );
  }
}

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
  String? title, subtoitle;

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
              subtoitle = value;
            },
            hint: 'contents',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButtom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
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
