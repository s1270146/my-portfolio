import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';

class CommandTitle extends StatelessWidget {
  const CommandTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommandText(text: "pwd"),
          Text(
            "/$text",
            style: TextStyle(
              fontSize: 36,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
