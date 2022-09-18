import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/reusables/constants.dart';
import 'package:teewhy_portfolio_app/reusables/widgets/social_media_container.dart';

class ProfileContainer extends StatelessWidget {
  final String image;
  final String name;
  final String desc;

  const ProfileContainer(this.image, this.name, this.desc, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.r),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white.withOpacity(0.6), Colors.white.withOpacity(0.7)]),
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
            bottomLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpacing(180),
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
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                            onPressed: () {}, child: const Text('Hire Me')))),
                addVerticalSpacing(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    const SocialMediaContainer(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
