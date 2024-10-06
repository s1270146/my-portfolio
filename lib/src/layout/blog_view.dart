import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/utils/url.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';

class BlogView extends StatelessWidget {
  const BlogView({super.key});

  final String _myBlogUrl = "https://mk-record.com";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommandText(text: "pwd"),
          Container(
            margin: const EdgeInsets.only(bottom: 50.0),
            child: Text(
              "/Blog",
              style: TextStyle(
                fontSize: 36,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Row(
            children: [
              CommandText(text: "curl"),
              Container(
                margin: const EdgeInsets.only(
                  left: 15.0,
                ),
                child: TextButton(
                  onPressed: () async {
                    await jumpToUrl(_myBlogUrl);
                  },
                  child: Text(
                    _myBlogUrl,
                    style: TextStyle(
                      fontSize: 36,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
