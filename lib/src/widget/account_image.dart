import 'package:flutter/material.dart';
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
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
