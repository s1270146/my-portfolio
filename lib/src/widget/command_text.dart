import 'package:flutter/material.dart';
import 'package:mk_portfolio/constants.dart';
import 'package:mk_portfolio/resources/colors.dart';

class CommandText extends StatelessWidget {
  const CommandText({
    super.key,
    required this.text,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = (screenWidth > responsiveWidth)
        ? screenWidth * 0.025
        : screenWidth * 0.045;
    return Text(
      "└──╼ \$ $text",
      style: TextStyle(
        color: color ?? AppColors.primaryColor,
        fontSize: fontSize,
      ),
    );
  }
}
