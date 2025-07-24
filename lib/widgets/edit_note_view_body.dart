import 'package:flutter/material.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          const CustomAppBar(title: 'Edit Note', icon: Icons.check,),
          const SizedBox(height: 50,),
          const CustomTextField(hint: 'Title'),
          const SizedBox(height: 16,),
          const CustomTextField(hint: 'Content', maxLines: 5,),
        ],
      ),
    );
  }
}
