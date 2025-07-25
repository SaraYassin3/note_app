import 'package:flutter/material.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return ColorItem();
          }),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 32,
    );
  }
}

