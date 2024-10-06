import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/controllers/provider.dart';
import 'package:mk_portfolio/src/utils/url.dart';
import 'package:mk_portfolio/src/widget/article.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';
import 'package:mk_portfolio/src/widget/command_title.dart';

class BlogView extends ConsumerWidget {
  const BlogView({super.key});

  final String _myBlogUrl = "https://mk-record.com";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 750 ? screenWidth * 0.025 : screenWidth * 0.04;
    double space = screenWidth * 0.01;
    final blog = ref.watch(fetchBlogProvider);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommandTitle(text: "Blog"),
            Row(
              children: [
                CommandText(text: "curl"),
                Container(
                  margin: EdgeInsets.only(
                    left: space,
                  ),
                  child: TextButton(
                    onPressed: () async {
                      await jumpToUrl(_myBlogUrl);
                    },
                    child: Text(
                      _myBlogUrl,
                      style: TextStyle(
                        fontSize: fontSize,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            blog.when(
              data: (items) => Wrap(
                spacing: 60,
                runSpacing: 4.0,
                children: items.map((map) {
                  return Article(
                    id: map['id']!,
                    title: map['title']!,
                    imgUrl: map['imgUrl']!,
                  );
                }).toList(),
              ),
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ],
        ),
      ),
    );
  }
}
