import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(noteModel.color),
        borderRadius: BorderRadius.circular(16)
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return EditNoteView();
          }));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                    noteModel.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                    ),
                ),
              ),
              trailing: IconButton(
                  onPressed: (){},
                  icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 24,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                noteModel.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 16
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
