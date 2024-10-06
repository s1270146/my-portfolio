import 'package:flutter/material.dart';
import 'package:mk_portfolio/constants.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/widget/account_image.dart';
import 'package:mk_portfolio/src/widget/circle_image.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';
import 'package:mk_portfolio/src/widget/command_title.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > responsiveWidth ? screenWidth * 0.02 : screenWidth * 0.04;
    double photoSize =
        screenWidth > responsiveWidth ? screenWidth * 0.20 : screenWidth * 0.7;
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommandTitle(text: "Profile"),
            CommandText(text: "profileFetch"),
            Padding(
              padding: EdgeInsets.all(screenWidth > responsiveWidth ? 20 : 5),
              child: screenWidth > responsiveWidth
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Center(
                            child: CircleImage(
                              imagePath: "assets/images/profile.jpg",
                              width: photoSize,
                              height: photoSize,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                children: [
                                  Text(
                                    "Name: ",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.secondColor,
                                    ),
                                  ),
                                  Text(
                                    "Koyo Mori",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "Grade: ",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.secondColor,
                                    ),
                                  ),
                                  Text(
                                    "Master's Student",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "Job: ",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.secondColor,
                                    ),
                                  ),
                                  Text(
                                    "Software Engineer (Part-time)",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "Hobby: ",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.secondColor,
                                    ),
                                  ),
                                  Text(
                                    "Soccer, HTB, CTF",
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Accounts:",
                                style: TextStyle(
                                  fontSize: fontSize,
                                  color: AppColors.secondColor,
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Wrap(
                                    spacing: 10.0,
                                    children: [
                                      AccountImage(
                                        imagePath: "assets/images/x.png",
                                        url: "https://x.com/mk__record",
                                      ),
                                      AccountImage(
                                        imagePath: "assets/images/github.png",
                                        url: "https://github.com/s1270146",
                                      ),
                                      AccountImage(
                                        imagePath: "assets/images/zenn.png",
                                        url: "https://zenn.dev/pascal",
                                      ),
                                      AccountImage(
                                        imagePath:
                                            "assets/images/mk-record.png",
                                        url: "https://mk-record.com",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Center(
                          child: CircleImage(
                            imagePath: "assets/images/profile.jpg",
                            width: photoSize,
                            height: photoSize,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  "Name: ",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "Koyo Mori",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Wrap(
                              children: [
                                Text(
                                  "Grade: ",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "Master's Student",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Wrap(
                              children: [
                                Text(
                                  "Job: ",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "Software Engineer (Part-time)",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Wrap(
                              children: [
                                Text(
                                  "Hobby: ",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "Soccer, HTB, CTF",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Accounts:",
                              style: TextStyle(
                                fontSize: fontSize,
                                color: AppColors.secondColor,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Wrap(
                                  spacing: 10.0,
                                  children: [
                                    AccountImage(
                                      imagePath: "assets/images/x.png",
                                      url: "https://x.com/mk__record",
                                    ),
                                    AccountImage(
                                      imagePath: "assets/images/github.png",
                                      url: "https://github.com/s1270146",
                                    ),
                                    AccountImage(
                                      imagePath: "assets/images/zenn.png",
                                      url: "https://zenn.dev/pascal",
                                    ),
                                    AccountImage(
                                      imagePath: "assets/images/mk-record.png",
                                      url: "https://mk-record.com",
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
