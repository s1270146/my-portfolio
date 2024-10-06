import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/utils/url.dart';

class Article extends StatelessWidget {
  const Article({
    super.key,
    required this.id,
    required this.title,
    required this.imgUrl,
  });

  final String id;
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 750 ? screenWidth * 0.015 : screenWidth * 0.04;
    double width = screenWidth > 750 ? screenWidth * 0.20 : screenWidth * 0.6;
    double height = width * 4 / 3;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          jumpToUrl("https://mk-record.com/article/$id");
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width,
                height: height / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return Image.asset(
                        "assets/images/default.png",
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: height / 2,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: fontSize,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
