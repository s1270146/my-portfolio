import 'package:flutter/material.dart';
import 'package:mk_portfolio/constants.dart';
import 'package:mk_portfolio/src/utils/url.dart';

class AccountImage extends StatelessWidget {
  const AccountImage({
    super.key,
    required this.imagePath,
    required this.url,
  });

  final String imagePath;
  final String url;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double width = screenWidth > responsiveWidth ? 40 : 25;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          jumpToUrl(url);
        },
        child: Container(
          color: Colors.white,
          child: Image.asset(
            imagePath,
            width: width,
            height: width,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
