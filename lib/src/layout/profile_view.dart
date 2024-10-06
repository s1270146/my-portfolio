import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/widget/account_image.dart';
import 'package:mk_portfolio/src/widget/circle_image.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';
import 'package:mk_portfolio/src/widget/command_title.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: CircleImage(
                        imagePath: "assets/images/profile.jpg",
                        width: 300.0,
                        height: 300.0,
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
                                fontSize: 28,
                                color: AppColors.secondColor,
                              ),
                            ),
                            Text(
                              "Koyo Mori",
                              style: TextStyle(
                                fontSize: 28,
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
                                fontSize: 28,
                                color: AppColors.secondColor,
                              ),
                            ),
                            Text(
                              "Master's Student",
                              style: TextStyle(
                                fontSize: 28,
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
                                fontSize: 28,
                                color: AppColors.secondColor,
                              ),
                            ),
                            Text(
                              "Software Engineer (Part-time)",
                              style: TextStyle(
                                fontSize: 28,
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
                                fontSize: 28,
                                color: AppColors.secondColor,
                              ),
                            ),
                            Text(
                              "Soccer, HTB, CTF",
                              style: TextStyle(
                                fontSize: 28,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Accounts:",
                          style: TextStyle(
                            fontSize: 28,
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
