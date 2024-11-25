import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notsapp/Models/note_model.dart';

import '../../constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  feachallNOts() {
    var notsBox = Hive.box<NoteModel>(kNotesBox);

    notes = notsBox.values.toList();
  }
}
