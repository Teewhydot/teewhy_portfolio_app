import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/social_media_container.dart';

class NeumorphicProfileContainer extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final width;
  final height;
  final color;

  NeumorphicProfileContainer(
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
    return Padding(
      padding:  EdgeInsets.only(left: 20.0.w, right: 20.0.w,bottom: 20.0.h),
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
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    addVerticalSpacing(10),
                    const Divider(),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
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
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                ),
                                onPressed: () async {
                                  launchEmail(context);
                                },
                                child: const Text(
                                  'Hire Me',
                                  style: TextStyle(color: Colors.black),
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
          color: color,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10.r,
              spreadRadius: 1,
              offset: Offset(-5, -5), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 18,
              spreadRadius: 1,
              offset: const Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
