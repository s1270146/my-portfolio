import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mk_portfolio/constants.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/controllers/provider.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';

class Sidebar extends ConsumerWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > responsiveWidth ? screenWidth * 0.02 : screenWidth * 0.05;
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CommandText(
              text: "tree",
            ),
            Text(
              "/",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: fontSize,
              ),
            ),
            Row(
              children: [
                Text(
                  "├──",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: fontSize,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    if (screenWidth < responsiveWidth) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: fontSize,
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
                    fontSize: fontSize,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    if (screenWidth < responsiveWidth) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    "Skills",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: fontSize,
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
                    fontSize: fontSize,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    if (screenWidth < responsiveWidth) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    "Works",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: fontSize,
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
                    fontSize: fontSize,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      3,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    if (screenWidth < responsiveWidth) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    "Blog",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: fontSize,
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
