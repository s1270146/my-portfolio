import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mk_portfolio/constants.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/controllers/provider.dart';
import 'package:mk_portfolio/src/layout/blog_view.dart';
import 'package:mk_portfolio/src/layout/profile_view.dart';
import 'package:mk_portfolio/src/layout/sidebar.dart';
import 'package:mk_portfolio/src/layout/skills_view.dart';
import 'package:mk_portfolio/src/layout/works_view.dart';

class Index extends ConsumerWidget {
  Index({super.key});

  final List<Widget> _pages = [
    ProfileView(),
    SkillsView(),
    WorksView(),
    BlogView(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;
    final pageController = ref.watch(pageControllerProvider);
    return Scaffold(
      appBar: screenWidth < responsiveWidth ? AppBar() : null,
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Sidebar(),
        ),
      ),
      body: Center(
        child: screenWidth > responsiveWidth
            ? Row(
                children: <Widget>[
                  const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Sidebar(),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        color: AppColors.backgroundColor,
                        child: PageView.builder(
                          controller: pageController,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: _pages.length,
                          itemBuilder: (context, index) {
                            return _pages[index];
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: AppColors.backgroundColor,
                  child: PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _pages.length,
                    itemBuilder: (context, index) {
                      return _pages[index];
                    },
                  ),
                ),
              ),
      ),
    );
  }
}
