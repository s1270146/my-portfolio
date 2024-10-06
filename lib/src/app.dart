import 'package:flutter/material.dart';
import 'package:mk_portfolio/constants.dart';
import 'package:mk_portfolio/resources/themes.dart';
import 'package:mk_portfolio/src/index.dart';
import 'package:seo/seo.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: Seo.head(
        tags: [
          MetaTag(
            name: "title",
            content: "Koyo Mori",
          ),
          MetaTag(
            name: "description",
            content: "I'm Koyo Mori. This page is my portfolio.",
          ),
        ],
        child: MaterialApp(
          title: title,
          theme: AppThemes.theme,
          home: Seo.text(
            text: "森 航洋 Koyo Mori",
            style: TextTagStyle.h1,
            child: Index(),
          ),
        ),
      ),
    );
  }
}
