import 'package:flutter/material.dart';
import 'package:note/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,)
        ],
      ),
    );
  }
}
