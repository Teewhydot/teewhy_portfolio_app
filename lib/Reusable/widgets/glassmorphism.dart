import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlassMorphicContainer extends StatelessWidget {
  final width;
  final height;
  final Widget child;

  const GlassMorphicContainer(this.width, this.height, this.child, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0.r),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20.r),
                    border:
                        Border.all(color: Colors.white.withOpacity(0.1), width: 1),
                  ),
                ),
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: LinearGradient(
                    stops: const [0.0, 1.0],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.25),
                    ],
                  ),
                ),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
