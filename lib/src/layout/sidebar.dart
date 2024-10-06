import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/controllers/provider.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';

class Sidebar extends ConsumerWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return Container(
      color: AppColors.backgroundColor,
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.0,
          top: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommandText(
              text: "tree",
              fontSize: 24,
            ),
            Text(
              "/",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 24,
              ),
            ),
            Row(
              children: [
                Text(
                  "├──",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "├──",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Skills",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "├──",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Works",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "└──",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      3,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Blog",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
