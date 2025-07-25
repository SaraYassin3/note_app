import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/constents.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/widgets/add_note_button_sheet.dart';
import 'package:note/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              context: context,
              builder: (context) {
                return AddNoteButtonSheet();
              }
          );
        },
        backgroundColor: kPrimaryColor,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}
