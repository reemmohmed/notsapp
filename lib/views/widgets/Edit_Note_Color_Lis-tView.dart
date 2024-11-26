import 'package:flutter/material.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/views/widgets/color_list_view.dart';

import '../../constant.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          itemCount: kColor.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColor[index].value;

                  setState(() {});
                },
                child: ItemColor(
                  color: kColor[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
