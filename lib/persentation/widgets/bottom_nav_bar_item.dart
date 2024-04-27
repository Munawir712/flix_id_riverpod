import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String title;
  final String image;
  final String selectedImage;

  const BottomNavBarItem({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.title,
    required this.image,
    required this.selectedImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 25,
          width: 25,
          child: Image.asset(isSelected ? selectedImage : image),
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
        )
      ],
    );
  }
}
