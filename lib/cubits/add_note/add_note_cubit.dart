import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnot(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notsBox = Hive.box<NoteModel>(kNotesBox);

      await notsBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailuer(e.toString()));
    }
  }
}
