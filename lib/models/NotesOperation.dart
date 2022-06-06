import 'package:flutter/cupertino.dart';
import 'package:notes/models/Note.dart';

class NotesOperation with ChangeNotifier{
  List<Note> _notes = [];
  List<Note> get getNotes{
    return _notes;
  }

  NotesOperation(){
    addNewNote('First Note' , 'First note Desc');
  }

  void addNewNote(String title, String description) {
    Note note = Note(title,description);
    _notes.add(note);
    notifyListeners();
  }
}