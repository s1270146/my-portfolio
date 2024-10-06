import 'package:flutter/material.dart';
import 'package:mk_portfolio/src/widget/command_title.dart';

class WorksView extends StatelessWidget {
  const WorksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommandTitle(text: "Works"),
          ],
        ),
      ),
    );
  }
}
