import 'package:flutter/material.dart';
import 'package:notsapp/constant.dart';

class Custtomtextfield extends StatelessWidget {
  const Custtomtextfield(
      {super.key, required this.hint, this.maxLines = 1, this.onSave});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (value) {
        //if enput to user is null يعني فارغ لم يتم ادخال اي شي اذن اعطيه هذا الريتيرن
        if (value?.isEmpty ?? true) {
          return 'faild is Required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
          hintText: hint,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kprimarycolor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
