import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
            },
          ),
          const SizedBox(height: 50,),
          CustomTextFormField(
            hint: 'Title',
            onChanged: (value){
              title = value;
            },
          ),
          const SizedBox(height: 16,),
          CustomTextFormField(
            hint: 'Content',
            maxLines: 5,
            onChanged: (value){
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
