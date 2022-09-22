// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassAppBar extends StatelessWidget {
  final width;
  final height;
  final String appBarTitle;
  final Widget trailing;

  const GlassAppBar(this.width, this.height, this.appBarTitle, this.trailing,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
              child: Padding(
                padding:  EdgeInsets.all(8.0.r),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          appBarTitle,
                          // style: TextStyle(color: Colors.white, fontSize: 20.sp),
                          style: GoogleFonts.leagueSpartan(
                              color: Colors.white, fontSize: 25.sp),
                        ),
                        trailing,
                      ],
                    ),
                  ),
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.1), width: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
