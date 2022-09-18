import 'dart:ui';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
 final String appBarTitle;
 final Widget trailing;
 const CustomAppBar(this.appBarTitle,this.trailing, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 130,
          width: double.infinity,
          decoration:  BoxDecoration(
            gradient: LinearGradient( begin: Alignment.topRight,end: Alignment.bottomLeft, colors: [Colors.white.withOpacity(0.6),Colors.white.withOpacity(0.7)]),
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  appBarTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            trailing,
            ],
          ),
        ),
      ),
    );
  }
}