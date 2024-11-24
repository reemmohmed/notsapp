import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/constant.dart';
import 'package:notsapp/cubits/add_note/add_note_cubit.dart';
import 'package:notsapp/simpel_blok_observer.dart';
import 'package:notsapp/views/widgets/notes_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = SimpelBlokObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotApp());
}

class NotApp extends StatelessWidget {
  const NotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
