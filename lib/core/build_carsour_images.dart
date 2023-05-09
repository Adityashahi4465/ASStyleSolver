import 'package:asstylesolver/pallate/app_colors.dart';
import 'package:flutter/material.dart';

class BuildImages extends StatelessWidget {
  final String imageUrl;
  final int index;
  const BuildImages({super.key, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 220,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          width: 2.5,
          color: Pallet.boarderColor,
        ),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
