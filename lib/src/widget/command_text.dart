import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';

class CommandText extends StatelessWidget {
  const CommandText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
  });

  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      "└──╼ \$ $text",
      style: TextStyle(
        color: color ?? AppColors.primaryColor,
        fontSize: fontSize ?? 36,
      ),
    );
  }
}
