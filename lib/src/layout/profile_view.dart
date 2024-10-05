import 'package:flutter/material.dart';
import 'package:mk_portfolio/resources/colors.dart';
import 'package:mk_portfolio/src/widget/command_text.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommandText(text: "pwd"),
          Text(
            "/Profile",
            style: TextStyle(
              fontSize: 36,
              color: AppColors.primaryColor,
            ),
          ),
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
                    child: ClipOval(
                      child: Image.asset(
                        'images/profile.jpg',
                        width: 300.0,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
