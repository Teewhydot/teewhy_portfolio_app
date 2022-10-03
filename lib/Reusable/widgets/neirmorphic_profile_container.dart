// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/social_media_container.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';

class NeumorphicProfileContainer extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final width;
  final height;
  final color;

  const NeumorphicProfileContainer(
      {Key? key,
      required this.image,
      required this.name,
      required this.desc,
      required this.width,
      required this.height,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    final textColor = providerListen.isDarkMode ? Colors.white : Colors.black;
    final buttonColor = providerListen.isDarkMode ? Colors.black : Colors.white;

    return Padding(
      padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, bottom: 20.0.h),
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 35.sp,
                        color: textColor,
                      ),
                    ),
                    addVerticalSpacing(10),
                    const Divider(),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: textColor,
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
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                ),
                                onPressed: () async {
                                  launchEmail(context);
                                },
                                child: Text(
                                  'Hire Me',
                                  style: TextStyle(color: textColor),
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
        ),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: providerListen.isDarkMode
              ? kBoxDecorationColorDarkMode
              : kBoxDecorationColor,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color:
                  providerListen.isDarkMode ? kBoxShadow1DarkMode : kBoxShadow1,
              blurRadius: 13.r,
              spreadRadius: 1,
              offset: const Offset(-4, -4), // changes position of shadow
            ),
            BoxShadow(
              color:
                  providerListen.isDarkMode ? kBoxShadow2darkMode : kBoxShadow2,
              blurRadius: 15,
              spreadRadius: 1,
              offset: const Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
