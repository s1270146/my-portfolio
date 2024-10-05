import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';

class WorksView extends StatelessWidget {
  const WorksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommandText(text: "pwd"),
          Text(
            "/Works",
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
