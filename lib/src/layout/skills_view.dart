import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommandText(text: "pwd"),
                  Row(
                    children: [
                      Text(
                        "/",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "Skills",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommandText(text: "ls 'Programming Language'"),
                  Wrap(
                    spacing: 18.0,
                    runSpacing: 4.0,
                    children: [
                      Text(
                        "Dart",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "TypeScript",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "Python",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "Go",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "Java",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "C++",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommandText(text: "ls Frameworks"),
                  Wrap(
                    spacing: 18.0,
                    runSpacing: 4.0,
                    children: [
                      Text(
                        "Flutter",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "Next.js",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "React",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "Gin",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommandText(text: "ls Infrastructures"),
                  Wrap(
                    spacing: 18.0,
                    runSpacing: 4.0,
                    children: [
                      Text(
                        "'Google Cloud'",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "AWS",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "Azure",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "PostgreSQL",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommandText(text: "ls -l Qualifications"),
                  Wrap(
                    children: [
                      Text(
                        "2022 Dec ",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        "応用情報技術者試験",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "2023 Jun ",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        "情報処理安全確保支援士(未登録)",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "2024 Jun ",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        "ネットワークスペシャリスト",
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.secondColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
