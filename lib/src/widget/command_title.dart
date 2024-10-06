import 'package:flutter/material.dart';
import 'package:mk_portfolio/constants.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';
import 'package:seo/seo.dart';

class CommandTitle extends StatelessWidget {
  const CommandTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth > responsiveWidth
        ? screenWidth * 0.025
        : screenWidth * 0.05;
    return Container(
      margin: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommandText(
            text: "pwd",
          ),
          Seo.text(
            text: text,
            style: TextTagStyle.h2,
            child: Text(
              "/$text",
              style: TextStyle(
                fontSize: fontSize,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
