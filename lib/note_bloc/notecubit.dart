import 'package:flutter_bloc/flutter_bloc.dart';

class NoteLogic extends Cubit<Notes>{
  NoteLogic(super.initialState);
  void addNote(String title,String content) {
    final note = Note(title: text, content: false);
    final tasksState = TasksState(tasks: state.tasks..add(task));
    emit(tasksState);
  }

}
class Notes{
  List<Note> listNotes=[];



}

class Note{

   String title='';
   String content='';

  Note(this.title, this.content);
}
