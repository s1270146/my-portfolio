import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
  });

  final String imagePath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: AppColors.surfaceColor,
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
