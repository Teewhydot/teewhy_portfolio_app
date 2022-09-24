import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';

class SkillCardGlass extends StatelessWidget {
  final String skillName;
  final skillIcon;
  final Color skillColor;

  const SkillCardGlass(
      {super.key,
      required this.skillName,
      required this.skillIcon,
      required this.skillColor});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      borderRadius: 20.r,
      blur: 20,
      padding: EdgeInsets.all(5.r),
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            skillColor.withOpacity(0.3),
            skillColor.withOpacity(0.05),
          ],
          stops: const [
            0.1,
            1,
          ]),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.5),
          const Color((0xFFFFFFFF)).withOpacity(0.5),
        ],
      ),
      width: 150.w,
      height: 150.h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60, width: 50, child: skillIcon),
            addVerticalSpacing(10),
            Text(
              skillName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SkillCardNeumorphic extends StatelessWidget {
  final String skillName;
  final skillIcon;

  const SkillCardNeumorphic({
    super.key,
    required this.skillName,
    required this.skillIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60, width: 50, child: skillIcon),
              addVerticalSpacing(10),
              Text(
                skillName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
        ),
      ),
      width: 150.0.w,
      height: 150.0.h,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
        boxShadow: [
          const BoxShadow(
            color: Colors.white,
            blurRadius: 10,
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
    );
  }
}
