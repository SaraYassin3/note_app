import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colorsList = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xff99900E),
    Color(0xff537D8D),
    Color(0xff482C3D)
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
          itemCount: colorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return ColorItem(
              onTap: (){
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colorsList[currentIndex];
                setState(() {

                });
              },
              color: colorsList[index],
              isActive: currentIndex == index ? Colors.white : colorsList[index],
            );
          }),
    );
  }
}


class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key, required this.color, required this.isActive, required this.onTap,
  });
  final Color color;
  final Color isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CircleAvatar(
          backgroundColor : isActive,
          radius: 36,
          child: CircleAvatar(
            backgroundColor: color,
            radius: 32,
          ),
        ),
      ),
    );
  }
}

