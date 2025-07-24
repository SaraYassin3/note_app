import 'package:flutter/material.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(hint: 'Title',),
          const SizedBox(height: 16,),
          CustomTextField(hint: 'Content', maxLines: 5,),
        ],
      ),
    );
  }
}
