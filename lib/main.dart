import 'package:flutter/material.dart';
import 'package:note_taking/home_page_screen/home_page_widget.dart';
import 'package:note_taking/note_add/note_add.dart';
import 'package:note_taking/note_preview/note_preview.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => HomePage(),
      '/note_add': (context) => NoteAdd(),
      '/note_preview': (context) => NotePreview(),
    },

  ));
}
