part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSucsses extends NotesState {
  final List<NoteModel> notes;

  NotesSucsses(this.notes);
}

final class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure(this.errorMessage);
}
