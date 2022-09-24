// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/social_media_container.dart';

class ProfileContainerGlass extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final width;
  final height;

  const ProfileContainerGlass(this.image, this.name, this.desc, this.width, this.height,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: SizedBox(
        height: height,
        child: Stack(children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
            child: Padding(
              padding: EdgeInsets.all(8.0.r),
              child: Container(
                height: height,
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addVerticalSpacing(60),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 35.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          addVerticalSpacing(10),
                          const Divider(),
                          Text(
                            desc,
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          addVerticalSpacing(10),
                          Center(
                              child: SizedBox(
                                  height: 50,
                                  width: 100,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.r),
                                        ),
                                      ),
                                      onPressed: () async {
                                        launchEmail(context);
                                      },
                                      child: const Text(
                                        'Hire Me',
                                        style: TextStyle(color: Colors.white),
                                      )))),
                          addVerticalSpacing(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SocialMediaContainer(),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.1), width: 1),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
