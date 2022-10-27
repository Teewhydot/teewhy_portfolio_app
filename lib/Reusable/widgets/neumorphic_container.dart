// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';

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
    final providerListen = Provider.of<DesignModeProvider>(context);
    return Container(
      child: Center(
        child: child,
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
            offset: const Offset(-5, -5),
          ),
          BoxShadow(
            color:
                providerListen.isDarkMode ? kBoxShadow2darkMode : kBoxShadow2,
            blurRadius: 18,
            spreadRadius: 1,
            offset: const Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
