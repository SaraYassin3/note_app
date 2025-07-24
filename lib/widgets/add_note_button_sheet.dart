import 'package:flutter/material.dart';
import 'package:note/widgets/add_note_form.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_form_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const SingleChildScrollView(
        child: const AddNoteForm()
      ),
    );
  }
}
