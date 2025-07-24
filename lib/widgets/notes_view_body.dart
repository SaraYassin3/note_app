import 'package:flutter/material.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_notes_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

