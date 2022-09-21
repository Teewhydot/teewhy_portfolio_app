import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final width;
  final height;
  final color;

  const NeumorphicContainer(
      {required this.child,
      required this.width,
      required this.height,
      required this.color,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: child,
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
            offset: const Offset(-5, -5), // changes position of shadow
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
